        <div id="sidebar">
        
            <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Sidebar') ) : ?>       
        
                <div class="side_box">

                  <? echo get_avatar( get_the_author_meta('user_email'), $size = '50'); ?>
                  <?php the_author(); ?>
                  <p><?php $authorDesc = the_author_meta('description'); echo $authorDesc; ?></p>

                  <a href="#">READ MORE ABOUT <?php $authorFName = the_author_meta('first_name'); echo $authorFName; ?></a>
                </div><!--//side_box-->
                
            <?php endif; ?>                
        
        </div><!--//sidebar-->
