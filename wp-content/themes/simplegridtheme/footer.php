    </div><!--//content_container-->



    <div id="footer">

        <div class="footer_widgets_cont">



            <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Footer') ) : ?>



            <div class="footer_box">
              <div>
                <span>
                <a href="<?php bloginfo('url'); ?>"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/footer-logo.png" class="logo" /></a>
              </span>
                <div>BLUEPRINT</div>
              </div>

              <div class="clear"></div>

              <div>
                <p>Oxford Blueprint is a consectetur adipisicing elit, sed do eius</p>
              </div>

              <div class="clear"></div>

              <div>
                <h3>FOLLOW US</h3>

                <ul class="social_icons">

                    <li><a href="#"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/linkedin-icon.png" /></a></li>


                    <li><a href="#"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/twitter-icon.png" /></a></li>


                    <li><a href="#"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/instagram-icon.png" /></a></li>

                </ul>

                <div class="clear"></div>


              </div>

            </div><!--//footer_box-->


<!--
            <div class="footer_box">

                <h3>Widget Footer</h3>

                <p>Please use widget to setup this text box. Please use widget to setup this text box. Please use widget to setup this text box. Please use widget to setup this text box.</p>

            </div><!--//footer_box-->



            <?php endif; ?>



            <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Footer Last') ) : ?>



            <div class="footer_box footer_box_last">

                <h2>Stay up to date with the latest in innovation and sustainabilit</h2>

            </div><!--//footer_box-->



            <?php endif; ?>



            <div class="clear"></div>



        </div><!--//footer_widgets_cont-->



    </div><!--//footer-->



</div><!--//main_container-->



<?php wp_footer(); ?>

</body>

</html>
