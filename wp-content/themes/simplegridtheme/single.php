<?php get_header(); ?>

    <div class="post-banner" style="background-image: url('<?php $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID), 'thumbnail' ); echo $url; ?>')">

    </div>

        <div class="single-blog-area">
            <div class="container">

                <div class="blog_left">

                  <div class="mobile-tag-area">
                    <?php
                        $categories = get_the_category();
                        $cat_name = str_replace(" ", "_", $categories[0]->cat_name);
                    ?>
                    <div class="box category_id_<?php echo strtolower($cat_name) ?>"></div>
                    <span><?php echo $categories[0]->cat_name ?></span>
                  </div>

                    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>


                        <h1><?php the_title(); ?></h1>

                        <p>By <?php the_author(); ?><p>

                        <div class="left_content">


                        <?php the_content(); ?>


                        <?php
                          $tags = wp_get_post_tags(get_the_ID());
                          if($tags) {
                            echo '<p>Tags: ';
                            foreach ($tags as $tag) {
                              echo $tag->name . ' ';
                            }
                            echo '</p>';
                          }
                        ?>

                        </div><!--//left_content-->



                        <br /><br />



                    <?php endwhile; else: ?>



                        <h3>Sorry, no posts matched your criteria.</h3>



                    <?php endif; ?>




                </div><!--//blog_left-->


                <?php get_sidebar(); ?>



            <div class="clear"></div>
            </div>
        </div>
        <div class="related-blog-area">
            <div class="container">
                <h3 class="blog-heading">Related Stories</h3>
                    <?php get_related_posts_thumbnails(); ?>
            </div>
        </div>



<?php get_footer(); ?>

<?php get_footer('mobile'); ?>
