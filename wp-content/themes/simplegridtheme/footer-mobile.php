    </div><!--//content_container-->



    <div id="footer" class="footer-mobile">
      <div class="container">

        <div class="footer_widgets_cont">


            <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Footer') ) : ?>

              <div class="footer_box footer_box_last">

                  <p>Stay connected with our community by subscribing to the Oxford | FORM newsletter</p>

                  <?php echo do_shortcode("[contact-form-7 id='84']"); ?>

              </div><!--//footer_box-->


            <?php endif; ?>

            <div class="clear"></div>
            <hr>

            <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Footer Last') ) : ?>



            <div class="footer_box footer_box_first">
              <div>
                <span>
                <a href="<?php bloginfo('url'); ?>"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/footer-logo.png" class="logo" /></a>
              </span>
                <div class="slogan"><strong>FORM</strong></div>
              </div>

              <div class="clear"></div>

              <div>
                <p>Oxford FORM is a consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minum veniam.</p>
              </div>

              <div class="clear"></div>

              <div class="social-area">
                <span>FOLLOW US</span>

                <ul class="social_icons">

                    <li><a href="#"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/linkedin-icon.png" /></a></li>


                    <li><a href="#"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/twitter-icon.png" /></a></li>


<!--                    <li><a href="#"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/instagram-icon.png" /></a></li>-->

                </ul>

                <div class="clear"></div>


              </div>

            </div><!--//footer_box-->


            <?php endif; ?>



            <div class="clear"></div>



        </div><!--//footer_widgets_cont-->

      </div>

    </div><!--//footer-->



</div><!--//main_container-->



<?php wp_footer(); ?>

</body>

</html>
