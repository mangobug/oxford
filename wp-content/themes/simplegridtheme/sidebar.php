        <hr class="mobile-only">

        <div id="sidebar">
                <div class="side_box">
                  <?php echo get_avatar( get_the_author_meta('user_email'), $size = '114'); ?>
                  <h3 class="author">
                    <?php the_author(); ?>
                  </h3>
                  <p><?php $authorDesc = the_author_meta('biography_summary'); echo $authorDesc; ?></p>

                  <a class="btn-more" href="<?php echo get_author_posts_url( get_the_author_meta( 'ID' ), get_the_author_meta('user_nicename') ); ?>">read more</a>

                  <hr class="mobile-only">

                  <h3>SHARE</h3>
                  <?php echo do_shortcode("[Sassy_Social_Share]"); ?>
                </div><!--//side_box-->


                <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Sidebar') ) : ?>
                  <?php dynamic_sidebar( 'Sidebar' ); ?>
                <?php endif; ?>




        </div><!--//sidebar-->
