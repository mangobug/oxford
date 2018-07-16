<?php get_header(); ?>

    <div class="post-banner" style="background-image: url('<?php $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID), 'thumbnail' ); echo $url; ?>')">

    </div>

        <div class="single-blog-area">
            <div class="container">

                <div class="blog_left">

                    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>


                        <h1><?php the_title(); ?></h1>

                        <p>By <?php the_author(); ?><p>

                        <div class="left_content">


                        <?php the_content(); ?>


                        <?php
                          $tags = wp_get_post_tags(get_the_ID());
                          if($tags) {
                            echo '<p>Tags: ';
                            foreach ($tags as $tag) {
                              echo $tag->name . ' ';
                            }
                            echo '</p>';
                          }
                        ?>

                        </div><!--//left_content-->



                        <br /><br />



                    <?php endwhile; else: ?>



                        <h3>Sorry, no posts matched your criteria.</h3>



                    <?php endif; ?>




                </div><!--//blog_left-->


                <?php get_sidebar(); ?>



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

<?php get_footer('mobile'); ?>

<script type="text/javascript">
  var $ = jQuery.noConflict();
  $( document ).ready(function() {
    var div = $( ".relpost-block-container" ).length;
    if (div == 0) {
      $( ".related-blog-area" ).css("display", "none");
    }
  });
</script>

<script>
var ua = window.navigator.userAgent;
var msie = ua.indexOf("MSIE ");

if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
  console.log("IE");
  var imgObj = document.getElementsByClassName('wp-post-image');
  function gray(imgObj) {
      var canvas = document.createElement('canvas');
      var canvasContext = canvas.getContext('2d');

      var imgW = 300;
      var imgH = 250;
      canvas.width = imgW;
      canvas.height = imgH;

      canvasContext.drawImage(imgObj, 0, 0);
      var imgPixels = canvasContext.getImageData(0, 0, imgW, imgH);

      for(var y = 0; y < imgPixels.height; y++){
          for(var x = 0; x < imgPixels.width; x++){
              var i = (y * 4) * imgPixels.width + x * 4;
              var avg = (imgPixels.data[i] + imgPixels.data[i + 1] + imgPixels.data[i + 2]) / 3;
              imgPixels.data[i] = avg;
              imgPixels.data[i + 1] = avg;
              imgPixels.data[i + 2] = avg;
          }
      }
      canvasContext.putImageData(imgPixels, 0, 0, 0, 0, imgPixels.width, imgPixels.height);
      return canvas.toDataURL();
  }

  for (var i = 0; i < imgObj.length; i++) {
    imgObj[i].src = gray(imgObj[i]);
  }
} else { console.log("IE not found"); }

</script>
