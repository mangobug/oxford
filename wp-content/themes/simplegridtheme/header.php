<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml">

<head>

  <title><?php wp_title('&laquo;', true, 'right'); ?> <?php bloginfo('name'); ?></title>

  <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" title="no title" charset="utf-8"/>
  <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/css/main.css" type="text/css" media="screen" title="no title" charset="utf-8"/>

  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!--[if lt IE 9]>

	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>

<![endif]-->

  <?php wp_head(); ?>

<!--  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>-->

  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>

  <script src="<?php bloginfo('stylesheet_directory'); ?>/js/main.js" type="text/javascript" charset="utf-8"></script>

  <script type="text/javascript">

  function show_post_desc(desc_num) {

      jQuery('#home_post_desc'+desc_num).css('display','block');

  }



  function hide_post_desc(desc_num) {

      jQuery('#home_post_desc'+desc_num).css('display','none');

  }

  </script>

</head>

<body>



<?php $shortname = "simple_grid"; ?>



<div id="main_container">


  <div id="header">
    <div class="container">


      <div class="row">
        <?php if(get_option($shortname.'_custom_logo_url','') != "") { ?>

          <a href="<?php bloginfo('url'); ?>"><img src="<?php echo stripslashes(stripslashes(get_option($shortname.'_custom_logo_url',''))); ?>" class="logo" /></a>

        <?php } else { ?>

          <a href="<?php bloginfo('url'); ?>"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/logo.png" class="logo" /></a>


          <strong class="slogan">XXXXXXX</strong>
        <?php } ?>



        <div class="right">



            <div id="menu_container">

                <?php wp_nav_menu('menu=Main Menu&container=false&menu_class=pages_menu'); ?>

                <div class="clear"></div>

            </div><!--//menu_container-->



            <div class="clear"></div>


        </div><!--//right-->



        <div class="clear"></div>


      </div>


      <?php if ( is_front_page() && is_home() ) { ?>

        <hr/>

        <div class="row-2">

          <div class="search_column" id="column-1">

            <h3>EXPLORE IDEAS ABOUT:</h3>

            <?php wp_nav_menu('menu=category_menu&container=false&menu_class=cat_menu'); ?>

          </div>

          <div class="search_column" id="column-2">

            <h3>Oxford Blueprint.</h3>

            <p class="search_blurb"><strong>An exploration of ideas, innovations and sustainability.</strong></p>

            <div class="search_cont">

                <form role="search" method="get" id="searchform" action="<?php echo home_url( '/' ); ?>">

                  <input type="text" name="s" id="s" />

                  <INPUT type="submit" class="search_button" value="Search">

                </form>

              </div><!--//search_cont-->

            </div>

          <div class="clear"></div>
        </div>

    <?php } ?>

    </div><!--//header-->
  </div>
