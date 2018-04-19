        <div id="sidebar">
                <div class="side_box">

                  <?php echo get_avatar( get_the_author_meta('user_email'), $size = '114'); ?>
                  <h3 class="author">
                    <?php the_author(); ?>
                  </h3>
                  <p><?php $authorDesc = the_author_meta('description'); echo $authorDesc; ?></p>

                  <a href="#">READ MORE ABOUT <?php $authorFName = the_author_meta('first_name'); echo $authorFName; ?></a>
                </div><!--//side_box-->


                <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Sidebar') ) : ?>
                  <?php dynamic_sidebar( 'Sidebar' ); ?>
                <?php endif; ?>

        </div><!--//sidebar-->
