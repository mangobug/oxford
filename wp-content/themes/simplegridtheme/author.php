<?php get_header(); ?>

  <?php
    $curauth = (isset($_GET['author_name'])) ? get_user_by('slug', $author_name) : get_userdata(intval($author));
  ?>

  <div class="post-banner" style="background-image: url('<?php $image = get_field( 'featured_image', $curauth ); echo $image['url']; ?>') " alt="<?php echo $image['alt']; ?> ">

  </div>


  <div class="single-blog-area author-page">
      <div class="container">

          <div class="author_page_left left">

            <div class="img-box"><?php echo get_avatar( $curauth->ID ); ?></div>
            <div class="clear"></div>
            <div class="author_social desktop-only">
                <h3>FOLLOW</h3>
                <span class="social-icons">
                    <a href=<?php echo get_field( 'linkedin', $curauth ); ?> target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/linked.png' ?> /></a>
                    <a href=<?php echo get_field( 'twitter', $curauth ); ?> target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/twitter.png' ?> /></a>
                    <a href=<?php echo get_field( 'facebook', $curauth ); ?> target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/fb.png' ?> /></a>
                    <a href="mailto:<?php echo get_the_author_meta('email', $curauth->ID); ?>" target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/mail.png' ?> /></a>
                </span>
            </div>
          </div><!--//author_page_left-->

          <div class="author_page_right right">

              <h1><?php echo $curauth->display_name; ?></h1>
              <p><?php echo $curauth->job_title; ?></p>
              <div class="desktop-only"><?php echo get_the_author_meta('biography', $curauth->ID); ?></div>

          </div><!--//autho_page_right-->

          <div class="clear"></div>
      </div>
      <div class="container">
        <div class="mobile-only author_description"><?php echo get_the_author_meta('biography', $curauth->ID); ?></div>
        <div class="author_social mobile-only">
            <h3>FOLLOW</h3>
            <span class="social-icons">
                <a href=<?php echo get_field( 'linkedin', $curauth ); ?> target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/linked.png' ?> /></a>
                <a href=<?php echo get_field( 'twitter', $curauth ); ?> target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/twitter.png' ?> /></a>
                <a href=<?php echo get_field( 'facebook', $curauth ); ?> target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/fb.png' ?> /></a>
                <a href="mailto:<?php echo get_the_author_meta('email', $curauth->ID); ?>" target="_blank"><img src=<?php echo get_bloginfo('stylesheet_directory') . '/images/mail.png' ?> /></a>
            </span>
        </div>
      </div>
    </div>

    <div id="author_more_posts" class="related-blog-area">
      <div id="load_posts_container" class="container">
        <h3 class="author_more_posts_heading"><?php printf( __( 'More from %s', '' ), '<span>' . $curauth->display_name . '</span>' ); ?></h3>

          <?php

          $args = array(

             'post_type' => 'post',

             's' => $curauth->display_name,

             'posts_per_page' => 3,

             'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1)

          );

          query_posts($args);
          $query_products = new WP_Query($args);

          $x = 0;

          $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

          if($paged > 1)

            $y = (0 + (($paged-1) * 6));

          else

            $y = 0;

          if( have_posts() ) {

            while (have_posts()) : the_post(); ?>

                <?php if($x == 2) { ?>

                <div class="home_post_box author-related-box home_post_box_last">

                <?php } else { ?>

                <div class="home_post_box author-related-box">

                <?php } ?>

                    <?php $categories = get_the_category();
                      $cat_name = str_replace(" ", "_", $categories[0]->cat_name); ?>

                    <div class="post_box_category category_id_<?php echo strtolower($cat_name); ?>">
                    </div>
                    <div class="top-link"><a href="javascript:void();" rel="category tag"><?php the_category(', '); ?></a></div>

                    <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('home-post',array('alt' => 'post image', 'class' => 'rounded')); ?></a>



                    <div class="home_post_desc" id="home_post_desc<?php echo $y; ?>">

                        <?php $temp_arr_content = explode(" ",substr(strip_tags(get_the_content()),0,225)); $temp_arr_content[count($temp_arr_content)-1] = ""; $display_arr_content = implode(" ",$temp_arr_content); echo $display_arr_content . '...'; ?>

                    </div><!--//home_post_desc-->

                    <div class="home_post_title_cont">

                      <a href="<?php the_permalink(); ?>">
                        <p class="heading"><?php the_title(); ?></p>

                        <h3>by <?php the_author(); ?></h3>
                        <span><img src="<?php bloginfo('stylesheet_directory'); ?>/images/arrow.png" class="arrow" /></span>
                      </a>
                    </div><!--//home_post_title_cont-->

                </div><!--//home_post_box-->

                <?php if($x == 2) { $x = -1; }

                $x++; $y++;

                endwhile;

                wp_reset_query(); ?>

                <div class="clear"></div>

            </div><!--//load_posts_container-->
            <?php if ($query_products->max_num_pages > 1) { ?>
              <div class="container">
                <div class="load_more_cont">
                    <p align="center"><span class="load_more_text"><?php next_posts_link('LOAD MORE', $query_products->max_num_pages) ?></span></p>
                </div><!--//load_more_cont-->
                <div class="clear"></div>
              </div>
            <?php } ?>
          <?php } else { ?>
            <p>No search results found.</p>
          <?php } ?>

      </div>
    </div>

    <script type="text/javascript">

    // Ajax-fetching "Load more posts"

    $('.load_more_cont a').live('click', function(e) {

      e.preventDefault();

      var $ = jQuery.noConflict();

      //$(this).addClass('loading').text('Loading...');

            //$('.load_more_text a').html('Loading...');

      $.ajax({

        type: "GET",

        url: $(this).attr('href') + '#main_container',

        dataType: "html",

        success: function(out) {

          result = $(out).find('#load_posts_container .home_post_box');

          nextlink = $(out).find('.load_more_cont a').attr('href');

                            //alert(nextlink);

          //$('#boxes').append(result).masonry('appended', result);

                        $('#load_posts_container').append(result);

          //$('.fetch a').removeClass('loading').text('Load more posts');

                            //$('.load_more_text a').html('Load More');





          if (nextlink != undefined) {

            $('.load_more_cont a').attr('href', nextlink);

          } else {

            $('.load_more_cont').remove();

                                    $('#load_posts_container').append('<div class="clear"></div>');

                                  //  $('.load_more_cont').css('visibilty','hidden');

          }



                        if (nextlink != undefined) {

                            $.get(nextlink, function(data) {

                              //alert(nextlink);

                              if($(data + ":contains('home_post_box')") != '') {

                                //alert('not found');

                                  //                      $('.load_more_cont').remove();

                                                        $('#load_posts_container').append('<div class="clear"></div>');

                              }

                            });

                        }



        }

      });

    });

    </script>

<?php get_footer(); ?>

<?php get_footer('mobile'); ?>
