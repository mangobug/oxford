<?php get_header(); ?>

        <div id="load_posts_container" class="grid container">



        <?php

        $category_ID = get_category_id('blog');

        $args = array(

                     'post_type' => 'post',

                     'posts_per_page' => 6,

                     'cat' => '-' . $category_ID,

                     'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1)

                     );

        query_posts($args);
        $query_products = new WP_Query($args);

        $x = 0;

        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

        if($paged > 1)

          $y = (0 + (($paged-1) * 6));

        else

          $y = 0;

        while (have_posts()) : the_post(); ?>

            <?php
              $categories = get_the_category();
              $cat_name = str_replace(" ", "_", $categories[0]->cat_name);
            ?>

            <?php if($x == 2) { ?>

            <div class="home_post_box home_post_box_last">

            <?php } else { ?>

            <div class="home_post_box">

            <?php } ?>


                <div class="post_box_category category_id_<?php echo strtolower($cat_name); ?>">
                  <a href="javascript:void();" rel="category tag"><?php echo $cat_name; ?></a>
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



            <?php if($x == 2) { $x = -1; } ?>



        <?php $x++; $y++; ?>

        <?php endwhile; ?>

        <?php wp_reset_query(); ?>

        <div class="clear"></div>


        </div><!--//load_posts_container-->

        <div class="container">

          <div class="load_more_cont">

              <p align="center"><span class="load_more_text"><?php next_posts_link('LOAD MORE', $query_products->max_num_pages) ?></span></p>

          </div><!--//load_more_cont-->


          <div class="clear"></div>

          <hr/>


          <div class="homepage_blurb">
            <h1>About Oxford Blueprint</h1>

            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>

            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>

          </div>

        </div>


<script type="text/javascript">

// Ajax-fetching "Load more posts"

$('.load_more_cont a').live('click', function(e) {

	e.preventDefault();

  var $ = jQuery.noConflict();

	//$(this).addClass('loading').text('Loading...');

        //$('.load_more_text a').html('Loading...');

	$.ajax({

		type: "GET",

		url: $(this).attr('href') + '#main_container',

		dataType: "html",

		success: function(out) {

			result = $(out).find('#load_posts_container .home_post_box');

			nextlink = $(out).find('.load_more_cont a').attr('href');

                        //alert(nextlink);

			//$('#boxes').append(result).masonry('appended', result);

                    $('#load_posts_container').append(result);

			//$('.fetch a').removeClass('loading').text('Load more posts');

                        //$('.load_more_text a').html('Load More');





			if (nextlink != undefined) {

				$('.load_more_cont a').attr('href', nextlink);

			} else {

				$('.load_more_cont').remove();

                                $('#load_posts_container').append('<div class="clear"></div>');

                              //  $('.load_more_cont').css('visibilty','hidden');

			}



                    if (nextlink != undefined) {

                        $.get(nextlink, function(data) {

                          //alert(nextlink);

                          if($(data + ":contains('home_post_box')") != '') {

                            //alert('not found');

                              //                      $('.load_more_cont').remove();

                                                    $('#load_posts_container').append('<div class="clear"></div>');

                          }

                        });

                    }



		}

	});

});

</script>

<?php get_footer(); ?>
