<?php get_header(); ?>

        <div class="container">

          <div class="row results_search_form">

                  <form role="search" method="get" id="searchform" action="<?php echo home_url( '/' ); ?>">

                    <input type="text" name="s" id="s" />

                    <INPUT type="submit" class="search_button" value="Search">

                  </form>

          </div>

          <div class="clear"></div>

          <h1 class="page-title"><?php printf( __( 'Explore Ideas About %s', '' ), '<span>' . get_search_query() . '</span>' ); ?></h1>

            <?php            

            $args = array(

                         'post_type' => 'post',

                         's' => get_search_query(),

                         'posts_per_page' => 9,

                         'cat' => '-' . $category_ID,

                         'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1)

                         );

            query_posts($args);
            $x = 0;



            $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

            if($paged > 1)

              $y = (0 + (($paged-1) * 6));

            else

              $y = 0;

            while (have_posts()) : the_post(); ?>



                <?php if($x == 2) { ?>

                <div class="home_post_box home_post_box_last">

                <?php } else { ?>

                <div class="home_post_box">

                <?php } ?>


                    <div class="post_box_category category_id_<?php the_category_id(); ?>">
                      <?php the_category(', '); ?>
                    </div>

                    <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('home-post',array('alt' => 'post image', 'class' => 'rounded')); ?></a>



                    <div class="home_post_desc" id="home_post_desc<?php echo $y; ?>">

                        <?php $temp_arr_content = explode(" ",substr(strip_tags(get_the_content()),0,225)); $temp_arr_content[count($temp_arr_content)-1] = ""; $display_arr_content = implode(" ",$temp_arr_content); echo $display_arr_content . '...'; ?>

                    </div><!--//home_post_desc-->



                    <div class="home_post_title_cont">

                      <a href="<?php the_permalink(); ?>">
                        <p class="heading"><?php the_title(); ?></p>

                        <h3>by <?php the_author(); ?></h3>
                        <span><img src="<?php bloginfo('stylesheet_directory'); ?>/images/arrow.png" class="arrow" /></span>
                      </a>
                    </div><!--//home_post_title_cont-->

                </div><!--//home_post_box-->



                <?php if($x == 2) { $x = -1; /*echo '<div class="clear"></div>';*/ } ?>



            <?php $x++; $y++; ?>

            <?php endwhile; ?>

            <?php wp_reset_query(); ?>



            <div class="clear"></div>


            </div><!--//load_posts_container-->

            <div class="container">
              <div class="load_more_cont">

                  <p align="center"><span class="load_more_text"><?php next_posts_link('LOAD MORE') ?></span></p>

              </div><!--//load_more_cont-->


              <div class="clear"></div>
        
<?php get_footer(); ?>
