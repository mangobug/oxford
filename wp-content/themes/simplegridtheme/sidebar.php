        <div id="sidebar">
                <div class="side_box">
                  <div class="tag-area">
                    <?php
                        $categories = get_the_category();
                        $cat_name = str_replace(" ", "_", $categories[0]->cat_name);
                    ?>
                    <div class="box category_id_<?php echo strtolower($cat_name) ?>"></div>
                    <span><?php echo $categories[0]->cat_name ?></span>
                  </div>

                  <?php echo get_avatar( get_the_author_meta('user_email'), $size = '114'); ?>
                  <h3 class="author">
                    <?php the_author(); ?>
                  </h3>
                  <p><?php $authorDesc = the_author_meta('description'); echo $authorDesc; ?></p>

                  <a class="btn-more" href="<?php esc_url(get_author_posts_url(the_author_meta('ID'))) ?>">read more</a>

                </div><!--//side_box-->


                <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Sidebar') ) : ?>
                  <?php dynamic_sidebar( 'Sidebar' ); ?>
                <?php endif; ?>

        </div><!--//sidebar-->
