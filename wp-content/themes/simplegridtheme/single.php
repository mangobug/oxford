<?php get_header(); ?>

    <div class="post-banner">
        <?php $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID), 'thumbnail' ); ?>
        <img src="<?php echo $url ?>" />
    </div>

        <div class="single-blog-area">
            <div class="container">

                <div class="blog_left">



                    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>


                        <h1><?php the_title(); ?></h1>



                        <div class="left_content">



                        <?php the_content(); ?>



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
                <?php get_related_posts_thumbnails(); ?>
            </div>
        </div>



<?php get_footer(); ?>
