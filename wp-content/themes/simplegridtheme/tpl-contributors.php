<?php

/*

  Template Name: Contributors

*/

?>

<?php get_header(); ?>

    <div id="Contributors">
        <div class="head-block">
            <div class="container">
                <h2>Contributors</h2>
                <p>Oxford | FORM presents ideas from the intersection of people and places. Our expert contributors share stories from life on the frontiers of global real estate - delivering valuable insights on design and development; investment and innovation; and, placemaking and prototyping.</p>

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
              usort($authors, "sort_user_by_rank");
              foreach($authors as $author) {
                if ($i % 2 == 0) {
                    $output = '<div class="Contributors-info Contributors-bg">';
                } else {
                    $output = '<div class="Contributors-info">';
                }
                $output .= '<div class="container">
                                <div class="img-box">' . get_avatar($author->ID, 200) . '</div>
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
