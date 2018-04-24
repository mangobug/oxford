<?php

/*

  Template Name: Contributors

*/

?>

<?php get_header(); ?>

    <div id="Contributors">
        <div class="head-block">
            <div class="container">
                <h2>Authors Page</h2>
                <?php
                    wp_reset_query();
                    while ( have_posts() ) : the_post();
                        the_content();
                    endwhile;
                ?>
            </div>
        </div>
        <?php $authors = get_users();
              foreach($authors as $author) {
                $output = '<div class="Contributors-info">
                            <div class="container">
                                <div class="img-box">' . get_avatar($author->ID) . '</div>
                                <div class="txt-holder">
                                    <span class="name">' . get_the_author_meta('display_name', $author->ID) . '</span>
                                    <span class="description">' . $author->roles[0] . '</span>
                                    <p>' . get_the_author_meta('description', $author->ID) . '</p>
                                    <div class="footer-area">
                                        <a class="btn-more" href="' . get_author_posts_url( $author->ID, $author->user_nicename ) . '">READ MORE</a>
                                    </div>
                                </div>
                            </div>
                        </div>';
                echo $output;
              }
        ?>
    </div>

<?php get_footer(); ?>
