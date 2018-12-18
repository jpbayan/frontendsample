<?php
/*
  Template Name: Ground Treatments Page
 * Template Post Type: page
 */
?>
<?php get_header(); ?>
<?php get_sidebar(); ?>

    <div class="container-fluid section-banner">
        <div class="row">
            <div class="col-sm-12">
                    <?php 

                    $image = get_field('page_banner');
                    $size = array(1800, 400);
	$banner = wp_get_attachment_image( $image['id'], $size );
        
                    if( !empty($banner) ): 
                         echo $banner;
                        ?>


                    <?php endif; ?>                    
                            
                
            </div>    
        </div>
    </div> 
    <br/>
      <br/>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1><strong><?php echo get_field('page_title'); ?></strong></h1>
            </div>    
        </div>
        <div class="row">
            <div class="col-md-6">
                <?php echo get_field('left_content'); ?>
            </div>    
            <div class="col-md-6">
                <?php echo get_field('right_content'); ?>
            </div>                
        </div>      
    </div>    
    <br/>
    <br/>
    <div class="section-groundtreatment">
    <?php query_posts( array(
            'post_type'  => 'treatments',
            'category'  => 'Ground',
            'posts_per_page' => 100,
            'order' => 'ASC'
        ) );  ?>


    <?php 
    $count = 0;
    while (have_posts()) : the_post(); 
    
            if( get_field('category') == 'Ground' ): 
    ?>
    <div class="<?php if($count % 2 == 0):  echo "greysection"; else: echo "bluesection"; endif; ?>">
        <div class="container" id="#<?php echo basename(get_permalink()); ?>">
            
            <div class="row  <?php if($count % 2 == 1):  echo "flex-column-reverse flex-md-row"; endif; ?>">
                
                
                 <?php if($count % 2 == 0):  ?>
                    <div class="col-md-6">
                        <br/>
                        <h2><?php the_title(); ?> </h2>
                        <?php the_content(); ?> 
                        <br/>
                    </div>               
                <?php endif; ?> 


                        <?php 

                        $image = get_field('image_2');
                        $size = array(1800, 400);
                        $image2 = wp_get_attachment_image( $image['id'], $size );
                        $image2src = wp_get_attachment_image_src($image['id'], $size);
                        

                        if( !empty($image2src) ): 
                             $image2url = $image2src[0];
                        endif;
                            ?>                
                
                <div class="col-md-6 <?php if($count % 2 == 1):  echo "col-sm-push-6 col-xs-push-6"; endif; ?>" <?php echo "style='background: url($image2url) no-repeat; background-position: top left; background-size: cover; min-height:180px;'"; ?>>
                    <br/>
                </div>          

                 <?php if($count % 2 == 1):  ?>
                    <div class="col-md-6 col-sm-pull-6 col-xs-pull-6">
                        <br/>
                        <h2><?php the_title(); ?> </h2>
                        <?php the_content(); ?> 
                        <br/>
                    </div>               
                <?php endif; ?>                         
                
            </div>
            
        </div>        
        
    </div>    
    <?php 
                $count++;
            endif;
    endwhile; 

    wp_reset_query();
    ?>                        
    </div>    
    
    <br/>
      <br/>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1>
                        Roof Treatments Ltd. – <strong>the Chemical Spray Professionals</strong>
                    </h1>
                    
                </div>
                             
            </div>
            <div class="row">
                <div class="col-md-6">
                    <p>We always pay close attention to the surroundings whenever we spray
chemicals, and will consider any risks on site. While our skilled staff make
sure there is very little overspray, we are extremely careful of animals such
as birds or pets, water sources, plants and trees, and property boundaries.
It’s really important to us that we thoroughly investigate any potential
                    </p>    
                </div>
                <div class="col-md-6">
                    <p>risks, and address them if required – for example keeping pets indoors for
a safe period, and covering water supplies. We are also Licensed Building
Practitioners with over 40 years’ experience in roofing, treatments, and
sprays. We hold Health & Safety Standards in the highest regard, and we are
trained in Fall Arrest Systems to Unit Standards 15757 and 17600.
                    </p>    
                </div>                
            </div>  
            <br/>
            <div class="row">
                <div class="col-sm-12 center-text">
                    <a href="#wpforms-form-145" class="btn btn-default">CONTACT US</a>
                </div>
            </div>            
        </div>    
    <br/>
      <br/>
    
<?php get_footer(); ?>