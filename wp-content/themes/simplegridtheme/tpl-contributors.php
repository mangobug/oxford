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
                                    <p>' . get_the_author_meta('description', $author->ID) . '</p>
                                    <div class="clear"></div>
                                    <div class="footer-area">
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
