<?php
/**
 * Plugin Name:  WordPress Related Posts Thumbnails
 * Plugin URI:   https://wpbrigade.com/wordpress/plugins/related-posts/?utm_source=related-posts-lite&utm_medium=plugin-uri&utm_campaign=pro-upgrade-rp
 * Description:  Showing related posts thumbnails under the posts.
 * Version:      1.6.3
 * Author:       WPBrigade
 * Author URI:   https://WPBrigade.com/?utm_source=related-posts-lite&utm_medium=author-link&utm_campaign=pro-upgrade-rp
 */

/*
   Copyright 2010 to 2018

	This product was first developed by Maria I Shaldybina and later on maintained and developed by Adnan (WPBrigade.com)

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
*/
class RelatedPostsThumbnails {
	/* Default values. PHP 4 compatible */
	public $single_only       = '1';
	public $auto              = '1';
	public $top_text          = '<h3>Related posts:</h3>';
	public $number            = 3;
	public $relation          = 'categories';
	public $poststhname       = 'thumbnail';
	public $background        = '#ffffff';
	public $hoverbackground   = '#eeeeee';
	public $border_color      = '#dddddd';
	public $font_color        = '#333333';
	public $font_family       = 'Arial';
	public $font_size         = '12';
	public $text_length       = '100';
	public $excerpt_length    = '0';
	public $custom_field      = '';
	public $custom_height     = '100';
	public $custom_width      = '100';
	public $text_block_height = '75';
	public $thsource          = 'post-thumbnails';
	public $categories_all    = '1';
	public $devmode           = '0';
	public $output_style      = 'div';
	public $post_types        = array( 'post' );
	public $custom_taxonomies = array();

	protected $wp_kses_rp_args = array(

						'h1' => array(),
						'h2' => array(),
						'h3' => array(),
						'h4' => array(),
						'h5' => array(),
						'h6' => array(),
						'strong' => array(),
					);

	function __construct() {

		$this->constant();
		// initialization
		load_plugin_textdomain( 'related-posts-thumbnails', false, basename( dirname( __FILE__ ) ) . '/locale' );
		$this->default_image = esc_url( plugins_url( 'img/default.png', __FILE__ ) );

		add_action( 'admin_enqueue_scripts', array( $this, 'admin_scripts' ) );

		// Compatibility for old default image path.
		if ( $this->is_old_default_img() )
			update_option( 'relpoststh_default_image', $this->default_image );

		if ( get_option( 'relpoststh_auto', $this->auto ) ) {
			$priority = apply_filters( 'rpt_content_prioirty', 10); //	Alter priority of the related post content
			add_filter( 'the_content', array( $this, 'auto_show' ), $priority );
		}

		add_action( 'admin_menu',  array( $this, 'admin_menu' ) );
		add_shortcode( 'related-posts-thumbnails' , array( $this, 'get_html' ) );

		$this->wp_version = get_bloginfo( 'version' );

		add_action( 'admin_footer',	array( $this, 'add_deactive_modal' ) );
		add_action( 'wp_ajax_rpt_deactivate', array( $this, 'rpt_deactivate' ) );

		add_action( 'admin_init', array( $this, 'review_notice' ) );
		add_action( 'wp_enqueue_scripts', array( $this, 'front_scripts' ) );

		add_action( 'wp_head', array( $this, 'head_style' ) );
	}

	function admin_scripts( $page ) {

		if ( 'toplevel_page_related-posts-thumbnails' === $page ) {
			wp_enqueue_media();
			wp_enqueue_style( 'rpt_admin_css', plugins_url( 'assets/css/admin.css', __FILE__ ), false, RELATED_POSTS_THUMBNAILS_VERSION );
			wp_enqueue_style( 'jquery-ui', 'http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css' );
			wp_enqueue_style( 'wp-color-picker' );
			wp_enqueue_script( 'rpt_admin_js', plugins_url( 'assets/js/admin.js', __FILE__ ), array( 'jquery', 'wp-color-picker', 'jquery-ui-datepicker' ), RELATED_POSTS_THUMBNAILS_VERSION );
		}

	}

	function front_scripts() {

		wp_enqueue_style( 'rpt_front_style', plugins_url( 'assets/css/front.css', __FILE__ ), false, RELATED_POSTS_THUMBNAILS_VERSION );
	}

	function constant() {

		define( 'RELATED_POSTS_THUMBNAILS_VERSION', '1.6.2' );
		define( 'RELATED_POSTS_THUMBNAILS_FEEDBACK_SERVER', 'https://wpbrigade.com/' );
		define( 'RELATED_POSTS_THUMBNAILS_PLUGIN_DIR', plugin_dir_path( __FILE__ ) );

	}

	/**
	* Show the popup on pluing deactivate
	*
	* @since 1.6.2
	*/
	function add_deactive_modal() {
		global $pagenow;

		if ( 'plugins.php' !== $pagenow ) {
			return;
		}

		include RELATED_POSTS_THUMBNAILS_PLUGIN_DIR. 'inc/rpt-deactivate-form.php';
	}


	/**
	* Send the user responce to api.
	*
	* @since 1.6.2
	*/
	function rpt_deactivate() {
		$email         = get_option( 'admin_email' );
		$_reason       = sanitize_text_field( wp_unslash( $_POST['reason'] ) );
		$reason_detail = sanitize_text_field( wp_unslash( $_POST['reason_detail'] ) );
		$reason        = '';

		if ( $_reason == '1' ) {
			$reason = 'I only needed the plugin for a short period';
		} elseif ( $_reason == '2' ) {
			$reason = 'I found a better plugin';
		} elseif ( $_reason == '3' ) {
			$reason = 'The plugin broke my site';
		} elseif ( $_reason == '4' ) {
			$reason = 'The plugin suddenly stopped working';
		} elseif ( $_reason == '5' ) {
			$reason = 'I no longer need the plugin';
		} elseif ( $_reason == '6' ) {
			$reason = 'It\'s a temporary deactivation. I\'m just debugging an issue.';
		} elseif ( $_reason == '7' ) {
			$reason = 'Other';
		}
		$fields = array(
			'email' 		        => $email,
			'website' 			    => get_site_url(),
			'action'            => 'Deactivate',
			'reason'            => $reason,
			'reason_detail'     => $reason_detail,
			'blog_language'     => get_bloginfo( 'language' ),
			'wordpress_version' => get_bloginfo( 'version' ),
			'php_version'				=> PHP_VERSION,
			'plugin_version'    => RELATED_POSTS_THUMBNAILS_VERSION,
			'plugin_name' 			=> 'Related Post Thumbnails',
		);

		$response = wp_remote_post( RELATED_POSTS_THUMBNAILS_FEEDBACK_SERVER, array(
			'method'      => 'POST',
			'timeout'     => 5,
			'httpversion' => '1.0',
			'blocking'    => false,
			'headers'     => array(),
			'body'        => $fields,
		) );

		wp_die();
	}

	/**
 * Check either to show notice or not.
 *
 * @since 1.8.2
 */
	public function review_notice() {

	$this->review_dismissal();
	$this->review_prending();

	$review_dismissal	= get_option( 'rpt_review_dismiss' );
	if ( 'yes' == $review_dismissal ) {
		return;
	}

	$activation_time 	= get_option( 'rpt_active_time' );
	if ( ! $activation_time ) {

		$activation_time = time();
		add_option( 'rpt_active_time', $activation_time );
	}

	// 1296000 = 15 Days in seconds.
	if ( time() - $activation_time > 1296000 ) {
		add_action( 'admin_notices' , array( $this, 'review_notice_message' ) );
	}

}

	/**
	 * Show review Message After 15 days.
	 *
	 * @since 1.8.2
	 */
	public function review_notice_message() {

	$scheme      = ( parse_url( $_SERVER['REQUEST_URI'], PHP_URL_QUERY ) )  ? '&' : '?';
	$url         = $_SERVER['REQUEST_URI'] . $scheme . 'rpt_review_dismiss=yes';
	$dismiss_url = wp_nonce_url( $url, 'rpt-review-nonce' );

	$_later_link = $_SERVER['REQUEST_URI'] . $scheme . 'ssb_review_later=yes';
	$later_url   = wp_nonce_url( $_later_link, 'rpt-review-nonce' );

?>
<style media="screen">
	.rpt-review-notice { padding: 15px 0; background-color: #fff; border-radius: 3px; margin: 20px 20px 0 0; border-left: 4px solid transparent; } .rpt-review-notice:after { content: ''; display: table; clear: both; }
	.rpt-review-thumbnail { float: left; line-height: 80px; text-align: center; width: 117px; }
	.rpt-review-thumbnail img { width: 118px; vertical-align: middle; }
	.rpt-review-text { overflow: hidden; }
	.rpt-review-text h3 { font-size: 24px; margin: 0 0 5px; font-weight: 400; line-height: 1.3; }
	.rpt-review-text p { font-size: 13px; margin: 0 0 5px; }
	.rpt-review-ul { margin: 0; padding: 0; }
	.rpt-review-ul li { display: inline-block; margin-right: 15px; }
	.rpt-review-ul li a { display: inline-block; color: #10738B; text-decoration: none; padding-left: 26px; position: relative; }
	.rpt-review-ul li a span { position: absolute; left: 0; top: -2px; }
</style>
	<div class="rpt-review-notice">
		<div class="rpt-review-thumbnail">
			<img src="<?php echo plugins_url( 'assets/images/rpt-logo.png', __FILE__ ) ?>" alt="">
		</div>
		<div class="rpt-review-text">
			<h3><?php _e( 'Leave A Review?', 'related-posts-thumbnails' ) ?></h3>
			<p><?php _e( 'We hope you\'ve enjoyed using Related Post Thumbnails! Would you consider leaving us a review on WordPress.org?', 'related-posts-thumbnails' ) ?></p>
			<ul class="rpt-review-ul"><li><a href="https://wordpress.org/support/plugin/related-posts-thumbnails/reviews/?filter=5" target="_blank"><span class="dashicons dashicons-external"></span><?php _e( 'Sure! I\'d love to!', 'related-posts-thumbnails' ) ?></a></li>
				 <li><a href="<?php echo $dismiss_url ?>"><span class="dashicons dashicons-smiley"></span><?php _e( 'I\'ve already left a review', 'related-posts-thumbnails' ) ?></a></li>
				 <li><a href="<?php echo $later_url ?>"><span class="dashicons dashicons-calendar-alt"></span><?php _e( 'Maybe Later', 'related-posts-thumbnails' ) ?></a></li>
				 <li><a href="<?php echo $dismiss_url ?>"><span class="dashicons dashicons-dismiss"></span><?php _e( 'Never show again', 'related-posts-thumbnails' ) ?></a></li></ul>
		</div>
	</div>
<?php
}

/**
 * Set time to current so review notice will popup after 15 days
 *
 * @since 1.8.2
 */
function review_prending() {

	// delete_site_option( 'rpt_review_dismiss' );
	if ( ! is_admin() ||
		! current_user_can( 'manage_options' ) ||
		! isset( $_GET['_wpnonce'] ) ||
		! wp_verify_nonce( sanitize_key( wp_unslash( $_GET['_wpnonce'] ) ), 'rpt-review-nonce' ) ||
		! isset( $_GET['ssb_review_later'] ) ) {

		return;
	}

	// Reset Time to current time.
	update_option( 'rpt_active_time', time() );

}

/**
 *	Check and Dismiss review message.
 *
 *	@since 1.8.2
 */
private function review_dismissal() {

	//delete_option( 'rpt_review_dismiss' );
	if ( ! is_admin() ||
		! current_user_can( 'manage_options' ) ||
		! isset( $_GET['_wpnonce'] ) ||
		! wp_verify_nonce( sanitize_key( wp_unslash( $_GET['_wpnonce'] ) ), 'rpt-review-nonce' ) ||
		! isset( $_GET['rpt_review_dismiss'] ) ) {

		return;
	}

	add_option( 'rpt_review_dismiss', 'yes' );
}


	/**
	 * [is_old_default_img Check the compatibility for old default image path.]
	 * @return boolean Return true if path is old.
	 */
	function is_old_default_img() {

		if ( get_option( 'relpoststh_default_image') !== $this->default_image ) {

			$chunks = explode( '/', get_option( 'relpoststh_default_image') );
			if ( in_array('related-posts-thumbnails', $chunks) ) {
				return true;
			}
		}

	}

	function auto_show( $content ) {
		// Automatically displaying related posts under post body
		return $content . $this->get_html( true );

	}

	function get_html( $show_top = false ) {
		// Getting related posts HTML
		if ( $this->is_relpoststh_show() ) {
			return $this->get_thumbnails( $show_top ); }
		return '';
	}

	function get_thumbnails( $show_top = false ) {
		// Retrieve Related Posts HTML for output
		$output              = '';
		$debug               = 'Developer mode initialisation; Version: 1.2.9;';
		$time                = microtime( true );
		$posts_number        = get_option( 'relpoststh_number', $this->number );
		$height 						 =	'';
		$width 						   =	'';
		// rpt_content_align: add content allignment class; clases are: relpost-align-left, relpost-align-right and relpost-align-center
		$output 						 = '<div class="relpost-thumb-wrapper ' . apply_filters( 'rpt_content_align', 'relpost-align-left') . ' ">';
		$alt                 = '';

		if ( $posts_number <= 0 ) { // return nothing if this parameter was set to <= 0
			return $this->finish_process( $output, $debug . 'Posts number is 0;', $time );
		}

		$id                  = get_the_ID();
		$relation            = get_option( 'relpoststh_relation', $this->relation );
		$poststhname         = get_option( 'relpoststh_poststhname', $this->poststhname );
		$text_length         = get_option( 'relpoststh_textlength', $this->text_length );
		$excerpt_length      = get_option( 'relpoststh_excerptlength', $this->excerpt_length );
		$thsource            = get_option( 'relpoststh_thsource', $this->thsource );
		$categories_show_all = get_option( 'relpoststh_show_categoriesall', get_option( 'relpoststh_categoriesall', $this->categories_all ) );
		$onlywiththumbs      = ( current_theme_supports( 'post-thumbnails' ) && $thsource == 'post-thumbnails' ) ? get_option( 'relpoststh_onlywiththumbs', false ) : false;
		$post_type           = get_post_type();

		global $wpdb;

		/* Get taxonomy terms */
		$debug .= "Relation: $relation; All categories: $categories_show_all;";
		$use_filter = ( $categories_show_all != '1' || $relation != 'no' );

		if ( $use_filter ) {
			$query_objects = "SELECT distinct object_id FROM $wpdb->term_relationships WHERE 1=1 ";

			if ( $relation != 'no' ) { /* Get object terms */
				if ( $relation == 'categories' ) {
					$taxonomy = array( 'category' ); } elseif ( $relation == 'tags' ) {
					$taxonomy = array( 'post_tag' ); } elseif ( $relation == 'custom' ) {
						$taxonomy = get_option( 'relpoststh_custom_taxonomies', $this->custom_taxonomies );
					} else {
						$taxonomy = array( 'category', 'post_tag' );
					}
					$object_terms = wp_get_object_terms( $id, $taxonomy, array( 'fields' => 'ids' ) );
					if ( empty( $object_terms ) || ! is_array( $object_terms ) ) { // no terms to get taxonomy
						return $this->finish_process( $output, $debug . __( 'No taxonomy terms to get posts;' ), $time );
					}

					$query = "SELECT term_taxonomy_id FROM $wpdb->term_taxonomy WHERE term_id in ('". implode( "', '", $object_terms ) . "')";
					$object_taxonomy = $wpdb->get_results( $query );
					$object_taxonomy_a = array();
					if ( count( $object_taxonomy ) > 0 ) {
						foreach ( $object_taxonomy as $item ) {
							$object_taxonomy_a[] = $item->term_taxonomy_id;
						}
					}
					$query_objects .= " AND term_taxonomy_id IN ('". implode( "', '", $object_taxonomy_a ) . "') ";
			}

			if ( $categories_show_all != '1' ) { /* Get filter terms */
				$select_terms = get_option( 'relpoststh_show_categories',
				get_option( 'relpoststh_categories' ) );
				if ( empty( $select_terms ) || ! is_array( $select_terms ) ) { // if no categories were specified intentionally return nothing
					return $this->finish_process( $output, $debug . __( 'No categories were selected;' ), $time );
				}

				$query = "SELECT term_taxonomy_id FROM $wpdb->term_taxonomy WHERE term_id in ('". implode( "', '", $select_terms ) . "')";
				$taxonomy = $wpdb->get_results( $query );
				$filter_taxonomy_a = array();
				if ( count( $taxonomy ) > 0 ) {
					foreach ( $taxonomy as $item ) {
						$filter_taxonomy_a[] = $item->term_taxonomy_id; }
				}
				if ( $relation != 'no' ) {
					$query_objects .= " AND object_id IN (SELECT distinct object_id FROM $wpdb->term_relationships WHERE term_taxonomy_id IN ('". implode( "', '", $filter_taxonomy_a ) . "') )";
				} else {
					$query_objects .= " AND term_taxonomy_id IN ('". implode( "', '", $filter_taxonomy_a ) . "')";
				}
			}

			$relationships = $wpdb->get_results( $query_objects );
			$related_objects = array();
			if ( count( $relationships ) > 0 ) {
				foreach ( $relationships as $item ) {
					$related_objects[] = $item->object_id;
				}
			}
		}

		$query = "SELECT distinct ID FROM $wpdb->posts ";
		$where = " WHERE post_type = '" . $post_type . "' AND post_status = 'publish' AND ID<>" . $id; // not the current post
		$startdate = get_option( 'relpoststh_startdate' );
		if ( ! empty( $startdate ) && preg_match( '/^\d\d\d\d-\d\d-\d\d$/', $startdate ) ) { // If startdate was set
			$debug .= "Startdate: $startdate;";
			$where .= " AND post_date >= '" . $startdate . "'";
		}
		if ( $use_filter ) {
			$where .= " AND ID IN ('". implode( "', '", $related_objects ) . "')";
		}
		$join = '';
		if ( $onlywiththumbs ) {
			$debug .= 'Only with thumbnails;';
			$join = " INNER JOIN $wpdb->postmeta ON ($wpdb->posts.ID = $wpdb->postmeta.post_id)";
			$where .= " AND $wpdb->postmeta.meta_key = '_thumbnail_id'";
		}

		$order = ' ORDER BY rand() LIMIT ' . $posts_number;
		$random_posts = $wpdb->get_results( $query . $join . $where . $order );

		/* Get posts by their IDs */
		if ( ! is_array( $random_posts ) || count( $random_posts ) < 1 ) {
			return $this->finish_process( $output, $debug . __( 'No posts matching relationships criteria;' ), $time );
		}

		$posts_in = array();
		foreach ( $random_posts as $random_post ) {
			$posts_in[] = $random_post->ID;
		}
		$query = "SELECT ID, post_content, post_excerpt, post_title FROM $wpdb->posts WHERE ID IN ('". implode( "', '", $posts_in ) . "')";
		$posts = $wpdb->get_results( $query );
		if ( ! ( is_array( $posts ) && count( $posts ) > 0 ) ) { // no posts
			$debug .= 'No posts found;';
			return $this->finish_process( $output, $debug, $time );
		} else {
			$debug .= 'Found ' . count( $posts ) . ' posts;';
		}

		/* Calculating sizes */
		if ( $thsource == 'custom-field' ) {
			$debug .= 'Custom sizes;';
			$width = get_option( 'relpoststh_customwidth', $this->custom_width );
			$height = get_option( 'relpoststh_customheight', $this->custom_height );
		} else { // post-thumbnails source
			if ( $poststhname == 'thumbnail' || $poststhname == 'medium' || $poststhname == 'large' ) { // get thumbnail size for basic sizes
				$debug .= 'Basic sizes;';
				$width = get_option( "{$poststhname}_size_w" );
				$height = get_option( "{$poststhname}_size_h" );
			} elseif ( current_theme_supports( 'post-thumbnails' ) ) { // get sizes for theme supported thumbnails
				global $_wp_additional_image_sizes;
				if ( isset( $_wp_additional_image_sizes[ $poststhname ] ) ) {
					$debug .= 'Additional sizes;';
					$width = $_wp_additional_image_sizes[ $poststhname ]['width'];
					$height = $_wp_additional_image_sizes[ $poststhname ]['height'];
				} else { 					$debug .= 'No additional sizes;'; }
			}
		}
		// displaying square if one size is not cropping
		if ( $height == 9999 ) {
			$height = $width;
		}
		if ( $width == 9999 ) {
			$width = $height;
		}
		// theme is not supporting but settings were not changed
		if ( empty( $width ) ) {
			$debug .= 'Using default width;';
			$width = get_option( 'thumbnail_size_w' );
		}
		if ( empty( $height ) ) {
			$debug .= 'Using default height;';
			$height = get_option( 'thumbnail_size_h' );
		}
		$debug .= 'Got sizes '.$width.'x'.$height.';';
		// rendering related posts HTML
		if ( $show_top ) {
			$output .= stripslashes( get_option( 'relpoststh_top_text', $this->top_text ) );
		}
		$relpoststh_output_style = get_option( 'relpoststh_output_style', $this->output_style );
		$relpoststh_cleanhtml = get_option( 'relpoststh_cleanhtml', 0 );
		$text_height = get_option( 'relpoststh_textblockheight', $this->text_block_height );


		if ( $relpoststh_output_style == 'list' ) {
			$output .= '<ul id="related_posts_thumbnails"';
			// if ( ! $relpoststh_cleanhtml ) {
			// 	$output .= ' style="list-style-type:none; list-style-position: inside; padding: 0; margin:0"';
			// }
			$output .= '>';
		} else {
			// $output .= '<div style="clear: both"></div><ul class="related-posts-nav">';
			$output .= '<div style="clear: both"></div><div class="relpost-block-container">';
		}

		foreach ( $posts as $post ) {
			$image = '';
			$url = '';
			$alt = '';
			if ( $thsource == 'custom-field' ) {
				$debug .= 'Using custom field;';
				$url = $basic_url = get_post_meta( $post->ID, get_option( 'relpoststh_customfield', $this->custom_field ), true );
				if ( strpos( $url, '/wp-content' ) !== false ) {
					$url = substr( $url, strpos( $url, '/wp-content' ) );
				}
				$theme_resize_url = get_option( 'relpoststh_theme_resize_url', '' );
				if ( ! empty( $theme_resize_url ) ) {
					$url = $theme_resize_url . '?src=' . $url . '&w=' . $width . '&h=' . $height . '&zc=1&q=90';
				}
			} else {
				$from_post_body = true;
				if ( current_theme_supports( 'post-thumbnails' ) ) { // using built in Wordpress feature
					$post_thumbnail_id = get_post_thumbnail_id( $post->ID );
					$debug .= 'Post-thumbnails enabled in theme;';
					if ( ! ( empty( $post_thumbnail_id ) || $post_thumbnail_id === false ) ) { // post has thumbnail
						$debug .= 'Post has thumbnail '.$post_thumbnail_id.';';
						$debug .= 'Postthname: '.$poststhname.';';
						$image = wp_get_attachment_image_src( $post_thumbnail_id, $poststhname );
						$alt = get_post_meta( $post_thumbnail_id, '_wp_attachment_image_alt', true );
						$url = $image[0];
						$from_post_body = false;
					} else {
						$debug .= 'Post has no thumbnail;';
					}
				}
				if ( $from_post_body ) { // Theme does not support post-thumbnails, or post does not have assigned thumbnail
					$debug .= 'Getting image from post body;';
					$wud = wp_upload_dir();
					preg_match_all( '|<img.*?src=[\'"](' . $wud['baseurl'] . '.*?)[\'"].*?>|i', $post->post_content, $matches ); // searching for the first uploaded image in text

					if ( isset( $matches ) && isset( $matches[1][0] ) ) {
						$image = $matches[1][0];
						$html = $matches[0][0];
						if ( !empty( $html ) ) {
							preg_match( '/alt="([^"]*)"/i', $html, $array );
							$explode_tag = explode( '"' , $array[0] );
							$alt = $explode_tag[1];

							// $dom = new DOMDocument();
							// $dom->loadHTML($html);
							// $nodes = $dom->getElementsByTagName('img');
							// $alt = $nodes->item(0)->getAttribute('alt');
						}
					} else {
						$debug .= 'No image was found;';
					}

					if ( strlen( trim( $image ) ) > 0 ) {
						$image_sizes = @getimagesize( $image );
						if ( $image_sizes === false ) {
							$debug .= 'Unable to determine parsed image size';
						}
						if ( $image_sizes !== false && isset( $image_sizes[0] ) && $image_sizes[0] == $width ) { // if this image is the same size as we need
							$debug .= 'Image used is the required size;';
							$url = $image;
						} else { // if not, search for resized thumbnail according to Wordpress thumbnails naming function
							$debug .= 'Changing image according to Wordpress standards;';
							$url = preg_replace( '/(-[0-9]+x[0-9]+)?(\.[^\.]*)$/', '-' . $width . 'x' . $height . '$2', $image );
						}
					} else {
						$debug .= 'Found wrong formatted image: '.$image.';';
					}
				}
				$basic_url = $url;
			}

			if ( strpos( $url, '/' ) === 0 ) {
				$debug .= 'Relative url: ' . $url . ';';
				$url = $basic_url = get_bloginfo( 'url' ) . $url;
			}

			$debug .= 'Image URL: '.$url.';';
			if ( empty( $basic_url ) ) { // parsed URL is empty or no file if can check
				$debug .= 'Image is empty or no file. Using default image;';
				$url = get_option( 'relpoststh_default_image', $this->default_image );
			}

			$title = $this->process_text_cut( $post->post_title, $text_length );
			$post_excerpt = ( empty( $post->post_excerpt ) ) ? $post->post_content : $post->post_excerpt;
			$excerpt = $this->process_text_cut( $post_excerpt, $excerpt_length );

			if ( ! empty( $title ) && ! empty( $excerpt ) ) {
				$title = '<b>' . $title . '</b>';
				$excerpt = '<br/>' . $excerpt;
			}

			if ( empty( $alt ) ) {
				$alt = $title;
			}

			$fontface = '';

			$debug .= 'Using title with size ' . $text_length . '. Using excerpt with size ' . $excerpt_length . ';';
			if ( $relpoststh_output_style == 'list' ) {
				$link = get_permalink( $post->ID );
				$fontface = str_replace( '"', "'", stripslashes( get_option( 'relpoststh_fontfamily', $this->font_family ) ) );
				$output .= '<li ';
				if ( ! $relpoststh_cleanhtml ) {
					// $output .= ' onmouseout="this.style.backgroundColor=\'' . get_option( 'relpoststh_background', $this->background ) . '\'"';
				}
				$output .= '>';
				$output .= '<a href="' . $link . '" ><img class="relpost-post-image" alt="' . $alt . '" src="' . esc_url( $url ) . '" width="' . $width . '" height="' . $height . '" ';
				if ( ! $relpoststh_cleanhtml ) {
					// $output .= 'style="padding: 0px; margin: 0px; border: 0pt none;"';
				}
				$output .= '/></a>';
				if ( $text_height != '0' ) {
					$output .= '<a href="' . $link . '" class="relpost_content"';
					if ( ! $relpoststh_cleanhtml ) {
						$output .= ' style="width: ' . $width . 'px;height: ' . $text_height . 'px; font-family: ' . $fontface . '; "'; }
					$output .= '><span>' . $title . $excerpt . '</span></a></li>';
				}
			} else {
				$output .= '<a class="relpost-block-single" href="' . get_permalink( $post->ID ) . '">';
				$output .= '<div style="width: ' . $width . 'px; height: ' . ( $height + $text_height ) . 'px;">';
				$output .= '<div class="relpost-block-single-image" alt="' . $alt . '"  style=" background: transparent url(' . esc_url( $url ) . ') no-repeat scroll 0% 0%; width: ' . $width . 'px; height: ' . $height . 'px; "></div>';
				$output .= '<div class="relpost-block-single-text"  style="font-family: ' . $fontface . ';  font-size: ' . get_option( 'relpoststh_fontsize', $this->font_size ) . 'px;  color: ' . get_option( 'relpoststh_fontcolor', $this->font_color ) . ';">' . $title . $excerpt . '</div>';
				$output .= '</div>';
				$output .= '</a>';
			}
		} // end foreach
		if ( $relpoststh_output_style == 'list' ) {
			$output .= '</ul>';
		} else {
			$output .= '</div>';
		}
		$output .= '<div style="clear: both"></div>';
		$output .= '</div>';
		return $this->finish_process( $output, $debug, $time );
	}

	function finish_process( $output, $debug, $time ) {
		$devmode = get_option( 'relpoststh_devmode', $this->devmode );
		if ( $devmode ) {
			$time = microtime( true ) - $time;
			$debug .= "Plugin execution time: $time sec;";
			$output .= '<!-- '.$debug.' -->';
		}
		return $output;
	}

	function process_text_cut( $text, $length ) {
		if ( $length == 0 ) {
			return '';
		} else {
			$text = strip_tags( strip_shortcodes( $text ) );
			if ( function_exists( 'mb_strlen' ) ) {
				return ( ( mb_strlen( $text ) > $length ) ? mb_substr( $text, 0, $length ) . '...' : $text );
			} else {
				return ( ( strlen( $text ) > $length ) ? substr( $text, 0, $length ) . '...' : $text );
			}
		}
	}

	function is_relpoststh_show() {
		// Checking display options
		if ( ! is_single() && get_option( 'relpoststh_single_only', $this->single_only ) ) { // single only
			return false;
		}
		/* Check post type */
		$post_types = get_option( 'relpoststh_post_types', $this->post_types );
		$post_type = get_post_type();
		if ( ! in_array( $post_type, $post_types ) ) {
			return false;
		}
		/* Check categories */
		$id = get_the_ID();
		$categories_all = get_option( 'relpoststh_categoriesall', $this->categories_all );
		if ( $categories_all != '1' ) { // only specific categories were selected
			$post_categories = wp_get_object_terms( $id, array( 'category' ), array( 'fields' => 'ids' ) );
			$relpoststh_categories = get_option( 'relpoststh_categories' );
			if ( ! is_array( $relpoststh_categories ) || ! is_array( $post_categories ) ) { // no categories were selcted or post doesn't belong to any
				return false;
			}
			$common_categories = array_intersect( $relpoststh_categories, $post_categories );
			if ( empty( $common_categories ) ) { // post doesn't belong to specified categories
				return false;
			}
		}
		return true;
	}

	function admin_menu() {
		$page = add_menu_page( __( 'Related Posts Thumbnails', 'related-posts-thumbnails' ), __( 'Related Posts', 'related-posts-thumbnails' ), 'administrator', 'related-posts-thumbnails', array( $this, 'admin_interface' ), 'dashicons-screenoptions' );
	}

	function admin_interface() {

		include_once RELATED_POSTS_THUMBNAILS_PLUGIN_DIR . '/inc/rpt-settings.php';
	}

	function display_categories_list( $categoriesall, $categories, $selected_categories, $all_name, $specific_name ) {
	?>
		<input id="<?php echo $all_name; ?>" class="select_all" type="checkbox" name="<?php echo $all_name; ?>" value="1" <?php if ( $categoriesall == '1' ) { echo 'checked="checked"'; } ?>/>
		<label for="<?php echo $all_name; ?>"><?php _e( 'All', 'related-posts-thumbnails' ); ?></label>
		<div class="select_specific" <?php if ( $categoriesall == '1' ) : ?> style="display:none" <?php endif; ?>>
			<?php foreach ( $categories as $category ) : ?>
			<input type="checkbox" name="<?php echo $specific_name; ?>[]" id="<?php echo $specific_name; ?>_<?php echo $category->category_nicename; ?>" value="<?php echo $category->cat_ID; ?>" <?php if ( in_array( $category->cat_ID, (array) $selected_categories ) ) { echo 'checked="checked"'; } ?>/>
			<label for="<?php echo $specific_name; ?>_<?php echo $category->category_nicename; ?>"><?php echo $category->cat_name; ?></label><br />
			<?php endforeach; ?>
		</div>
	<?php
	}




	function head_style() {
		?>
		<style>
		#related_posts_thumbnails li{
			border-right: 1px solid <?php echo get_option( 'relpoststh_bordercolor', $this->border_color ) ?>;
			background-color: <?php echo get_option( 'relpoststh_background', $this->background ) ?>
		}
		#related_posts_thumbnails li:hover{
			background-color: <?php echo get_option( 'relpoststh_hoverbackground', $this->hoverbackground ) ?>;
		}
		.relpost_content{
			font-size: <?php echo  get_option( 'relpoststh_fontsize', $this->font_size ) . 'px' ?>;
			color: <?php echo  get_option( 'relpoststh_fontcolor', $this->font_color ) ?>;
		}
		.relpost-block-single{
			background-color: <?php echo get_option( 'relpoststh_background', $this->background ) ?>;
			border-right: 1px solid  <?php echo get_option( 'relpoststh_bordercolor', $this->border_color ) ?>;
			border-left: 1px solid  <?php echo get_option( 'relpoststh_bordercolor', $this->border_color ) ?>;
			margin-right: -1px;
		}
		.relpost-block-single:hover{
			background-color: <?php echo get_option( 'relpoststh_hoverbackground', $this->hoverbackground )  ?>;
		}
		</style>

		<?php
	}


}

add_action( 'init', 'related_posts_thumbnails' );

function related_posts_thumbnails() {
	global $related_posts_thumbnails;
	$related_posts_thumbnails = new RelatedPostsThumbnails();
}

// Include Widget File.
include_once plugin_dir_path( __FILE__ ) . 'inc/rpt-widget.php';

?>
