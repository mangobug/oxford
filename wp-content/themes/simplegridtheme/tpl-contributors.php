<?php

/*

  Template Name: Contributors

*/

?>

<?php get_header(); ?>

    <div id="Contributors">
        <div class="head-block">
            <div class="container">
                <h2>Contributors Page</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

                <?php
                    wp_reset_query();
                    while ( have_posts() ) : the_post();
                        the_content();
                    endwhile;
                ?>
            </div>
        </div>
        <?php
              $args = array(
                'role'    => 'author',
              );
              $i = 0;
              $authors = get_users( $args );
              foreach($authors as $author) {
                if ($i % 2 == 0) {
                    $output = '<div class="Contributors-info Contributors-bg">';
                } else {
                    $output = '<div class="Contributors-info">';
                }
                $output .= '<div class="container">
                                <div class="img-box">' . get_avatar($author->ID) . '</div>
                                <div class="txt-holder">
                                    <span class="name">' . get_the_author_meta('display_name', $author->ID) . '</span>
                                    <span class="description">' . get_field( 'job_title', $author ) . '</span>
                                    <p class="biography_summary">' . get_field( 'biography_summary', $author ) . '</p>
                                    <div class="clear"></div>
                                    <div class="footer-area">
                                        <p class="footer-heading"><strong>FOLLOW</strong></p>
                                        <span class="social-icons">
                                            <a href="'. get_field( 'linkedin', $author ) .'" target="_blank"><img src="' . get_bloginfo('stylesheet_directory') . '/images/linked.png"/></a>
                                            <a href="'. get_field( 'twitter', $author ) .'" target="_blank"><img src="' . get_bloginfo('stylesheet_directory') . '/images/twitter.png" /></a>
                                            <a href="'. get_field( 'facebook', $author ) .'" target="_blank"><img src="' . get_bloginfo('stylesheet_directory') . '/images/fb.png" /></a>
                                            <a href="mailto:'. get_the_author_meta('email', $author->ID) .'" target="_blank"><img src="' . get_bloginfo('stylesheet_directory') . '/images/mail.png" /></a>
                                        </span>
                                        <a class="btn-more" href="' . get_author_posts_url( $author->ID, $author->user_nicename ) . '">READ MORE</a>
                                    </div>
                                </div>
                            </div>
                        </div>';
                echo $output;
                $i++;
              }
        ?>
    </div>

<?php get_footer(); ?>

<?php get_footer('mobile'); ?>
