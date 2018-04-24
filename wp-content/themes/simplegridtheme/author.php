<?php get_header(); ?>

  <?php
    $curauth = (isset($_GET['author_name'])) ? get_user_by('slug', $author_name) : get_userdata(intval($author));
  ?>

  <div class="post-banner">
      <?php $image = get_field( 'featured_image', $curauth ); ?>
      <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

  </div>


  <div class="single-blog-area">
      <div class="container">

          <div class="blog_left">

            <?php echo get_avatar( $curauth->user_email , '150 '); ?>

            Social links
          </div><!--//blog_left-->

          <div class="side_box">

              <?php echo $curauth->nickname; ?>

              <?php echo $curauth->user_description; ?>

          </div><!--//blog_left-->

          <div class="clear"></div>
      </div>
    </div>

    <div class="related-blog-area">
      <div class="container">
        <h3 class="blog-heading">Related Stories</h3>
          <?php get_related_posts_thumbnails(); ?>
      </div>
    </div>


<?php get_footer(); ?>
