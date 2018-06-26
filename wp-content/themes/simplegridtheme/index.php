<?php get_header(); ?>

        <div id="load_posts_container" class="container">

        <?php

        $args = array(

                     'post_type' => 'post',

                     'posts_per_page' => 6,

                     'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1)

                     );

        if ( isset($_GET['category']) ) {
          $args['category_name'] = $_GET['category'];
        }

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


            <div class="home_post_box <?php echo strtolower($cat_name) ?>">


                <div class="post_box_category category_id_<?php echo strtolower($cat_name); ?>">
                </div>
                <div class="top-link"><a href="javascript:void();" rel="category tag"><?php echo $categories[0]->cat_name; ?></a></div>

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
            <h1>About Oxford | FORM</h1>

            <p>Oxford | FORM presents ideas from the intersection of people and places. Here, our employees, partners and friends share stories from life on the frontiers of global real estate. From design to development, investment to innovation, placemaking to prototyping, we’ll share what we’re thinking, reading and doing. We’ll also have some fun along the way.</p>

            <p>Oxford | FORM is about city-building on a human-scale. Be part of the conversation. We’ll journey forward, together.</p>

          </div>

        </div>

<script type="text/javascript">

  var $ = jQuery.noConflict();
  var $grid = $('#load_posts_container').isotope({
    itemSelector: '.home_post_box',
    layoutMode: 'fitRows'
  });

  $('.cat_menu .menu-item').on('click', function(e) {
    e.preventDefault();
    var $ = jQuery.noConflict();
    $('.cat_menu .menu-item').removeClass('active');
    $(e.target).parent('li').addClass('active');
    filterValue = $(this).find('a').text().toLowerCase().replace(" ", "-");
    main_url = "<?php echo get_site_url() ?>";
    $.ajax({
      type: "GET",
      url: main_url,
      data: { category: filterValue },
      dataType: "html",
      success: function(out) {
        result = $(out).find('#load_posts_container .home_post_box');
        nextlink = $(out).find('.load_more_cont a').attr('href');

        $grid.isotope('remove', $('#load_posts_container .home_post_box'))
             .isotope( 'insert', result );

        if (nextlink != undefined) {
          if ($('.load_more_cont').length == 0)
          {
            $('#load_posts_container').next().prepend('<div class="load_more_cont"><p align="center"><span class="load_more_text"><a href="">LOAD MORE</a></span></p></div>')
          }
          $('.load_more_cont a').attr('href', nextlink);
        } else {
          $('.load_more_cont').remove();
          $('#load_posts_container').append('<div class="clear"></div>');
        }
        if (nextlink != undefined) {
          $.get(nextlink, function(data) {
            if($(data + ":contains('home_post_box')") != '') {
              $('#load_posts_container').append('<div class="clear"></div>');
            }
          });
        }
        $( ".closebtn" ).trigger( "click" );
      }
    });
  });

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

      $grid.isotope('insert', result);

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

<?php get_footer('mobile'); ?>
