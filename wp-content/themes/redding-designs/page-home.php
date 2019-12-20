<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Redding_Designs
 */

get_header();
    ?>
            <style>
                .desktop:before {
                    background-image: url('<?php the_field( "desktop" ); ?>');
                }
                .laptop:before {
                    background-image: url('<?php the_field( "laptop" ); ?>');
                }
                .tablet:before {
                    background-image: url('<?php the_field( "tablet" ); ?>');
                }
                .phone:before {
                    background-image: url('<?php the_field( "phone" ); ?>');
                }
            </style>
            
            <div class="banner-home" data-aos="fade-in">
                <section>
                    <h1>You take care of your business.  Let the Beards do the rest.</span></h1>
                    <p>We believe a great website is the heart of any company and that’s where we come in.</p>
                    <p class="btn"><a href="http://beardreview.com/priceestimator/hidden/" title="Get a Quote">Get a Quote</a></p>
                    <!-- <a class="btn btn--free_audit"><a href="<?php echo get_site_url(); ?>/seo-audit" title="Free Audit">FREE AUDIT</a></p> -->
                </section>
            </div>
            <div class="container-white home-page">
                <div class="modal fade" id="popup">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close pr-4" onClick="closeModal()">
                                    <span style="color: black;">&times;</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <section>
                    <div class="flex">
                        <div class="cell-service" data-aos="zoom-in">
                            <a href="<?php echo get_site_url(); ?>/Service/web-design-development" title="Create Your Presence">
                                <div class="icon-service web-design-development"></div>

                                <h2>Web Design &amp; Development</h2>

                                <p>Gone are the days when businesses could afford to ignore their web presence which means your web presence is more important than ever.</p>

                                <p>Create Your Presence</p>
                            </a>
                        </div>

                        <div class="cell-service" data-aos="zoom-in">
                            <a href="<?php echo get_site_url(); ?>/Service/digital-marketing" title="Let's Raise the Bar">
                                <div class="icon-service digital-marketing"></div>

                                <h2>Digital Marketing</h2>

                                <p>Choosing to ignore online marketing is a bit like building a brand new storefront, but not telling anyone about it.</p>

                                <p>Let's Raise the Bar</p>
                            </a>
                        </div>

                        <div class="cell-service" data-aos="zoom-in">
                            <a href="<?php echo get_site_url(); ?>/Service/print-media-design" title="Go Tangible">
                                <div class="icon-service print-media-design"></div>

                                <h2>Print Media Design</h2>

                                <p>Sturdy. Attractive. Catchy. Made to be handled and stand up to abuse. Print media needs to be all of these things and we’ve got you covered.</p>

                                <p>Go Tangible</p>
                            </a>
                        </div>

                        <div class="cell-service" data-aos="zoom-in">
                            <a href="<?php echo get_site_url(); ?>/Service/logo-design-branding" title="Make a Name">
                                <div class="icon-service logo-branding"></div>

                                <h2>Logo Design &amp; Branding</h2>

                                <p>Your logo is one of the most important parts of your business. We are fully equiped to provide you with a unique, custom logo that sets you apart.</p>

                                <p>Make a Name</p>
                            </a>
                        </div>

                        <div class="cell-service" data-aos="zoom-in">
                            <a href="<?php echo get_site_url(); ?>/Service/internet-services" title="We'll Spin the Web">
                                <div class="icon-service internet-services"></div>

                                <h2>Internet Services</h2>

                                <p>The bread and butter of your internet presence, these services aren’t high-visibility, but they have a big impact on your success.</p>

                                <p>We'll Spin the Web</p>
                            </a>
                        </div>

                        <div class="cell-service" data-aos="zoom-in">
                            <a href="<?php echo get_site_url(); ?>/Service/photography-videography" title="Custom Photography/Videography">
                                <div class="icon-service photography-videography"></div>

                                <h2>Photography & Videography</h2>

                                <p>Custom asset creations</p>

                                <p>Check for Updates</p>
                            </a>
                        </div>
                    </div>
                </section>
            </div>
            
            <div class="container-grey">
                <section data-aos="zoom-in">
                    <h3 class="heading">Featured Adventure</h3>
                    
                    <p><strong><?php the_field( "client_name" ); ?></strong></p>
                    
                    <p><?php the_field( "description" ); ?></p>
                    
                    <p class="btn"><a href="<?php the_field( "portfolio_permalink" ); ?>" title="<?php the_field( "portfolio_permalink" ); ?>" target="_blank">View Case Study</a></p>
                </section>
                
                <div class="latest">                
                    <div class="desktop" data-aos="slide-right"></div>
                    <div class="tablet" data-aos="slide-right"></div>
                    <div class="laptop" data-aos="slide-right"></div>
                    <div class="phone" data-aos="slide-right"></div>
                </div>
            </div>
            <div class="container-white digital_marketing">
                <div class="row">
                    <section class="col-lg-6 digital_marketing-text" data-aos="zoom-in">
                        <h3 class="heading">Digital Marketing</h3>
                        <p><strong>A website by itself just isn't enough...these days.</strong></p>
                        <p>A short descripton of our digital marketing services will go here.</p>
                        <p class="btn"><a href="<?php echo get_site_url(); ?>/contact" target="_blank">Get Started Today</a></p>
                    </section>
                    <section class="col-lg-6 digital_marketing-laptop--container" data-aos="zoom-in">
                        <div class="digital_marketing-laptop" style="background-image: url('<?php echo get_stylesheet_directory_uri() ?>/assets/modern/images/thumbs/digitalMarketing-laptop.png');">
                        </div>
                    </section>
                </div>
            </div>
            <div class="container-feed container-feed--home">
                <section data-aos="fade-in">
                    <h4 class="heading white">Join us on Facebook</h4>
                    
                    <p class="white">Join us on our journey and get to know who we are.</p>
                    
                    <div class="phone-back" data-aos="zoom-in"></div>
                    
                    <div class="phone-front" data-aos="slide-up">
                        <div class="fb-page" data-href="https://www.facebook.com/reddingdesigns" data-small-header="true" data-width="450" data-height="500" data-hide-cover="true" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"></div></div>
                    </div>
                </section>
            </div>

            <div class="container-white container-white-borders">
                <section class="narrow">
                    <div class="owl-carousel owl-theme">
                        <?php 
                        $portrait_styles = array();
                        // Get Products from database
                        $wpb_all_query = new WP_Query(array('post_type'=>'Testimonial', 'post_status'=>'publish', 'posts_per_page'=>-1)); ?>
                        <?php 
                        $i = 0;
                        foreach ($wpb_all_query->posts as $post) {
                            $modern = ".modern_$i { background-image: url('" . get_field( "modern_image") . "');}";
                            $victorian = ".victorian_$i { background-image: url('" . get_field( "victorian_image") . "');}";
                            $eighties = ".eighties_$i { background-image: url('" . get_field( "80s_image") . "');}";
                            $monochrome = ".monochrome_$i { background-image: url('" . get_field( "monochrome_image") . "');}";
                            $portrait_styles[] = $modern;
                            $portrait_styles[] = $victorian;
                            $portrait_styles[] = $eighties;
                            $portrait_styles[] = $monochrome;
                            $i++;
                        }
                        ?>
                        <?php $i = 0 ?>
                        <?php if ( $wpb_all_query->have_posts() ) : while ( $wpb_all_query->have_posts() ) : ?>
                            
                            <?php $wpb_all_query->the_post(); ?>
                                <div class="item" data-aos="slide-right">
                                    <div id="testimonial_portrait" class="client dynamic client_<?php echo $i; ?>" style="background-image: url('<?php echo the_field( "modern_image" ); ?>');"></div>
                                    <div class="client-review">
                                        <p class="black"><strong><?php echo get_field( 'tag_line' ); ?></strong></p>
                                        
                                        <p>"<?php echo get_field( 'testimonial_content' ); ?>"</p>
                                        
                                        <p><a href="<?php echo get_field( 'website' ); ?>" title="<?php echo the_title(); ?> Website" target="_blank">Visit Website</a></p>
                                        
                                        <p class="client-name">~ <?php echo the_title(); ?></p>
                                    </div>
                                </div>
                                <?php $i++; ?>
                                <?php endwhile; ?>
                            <?php wp_reset_postdata(); ?>
                            <?php else : ?>
                                <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
                            <?php endif; ?>
                            
                    </div>
                </section>
            </div> 
            <div class="container-grey quote quote-contact">
                <div class="price-estimator--container">
                    <section data-aos="zoom-in">
                        <h3 class="heading">Get a FREE Custom Quote to Suit Your Needs</h3>
                        <p>Use our fun and super friendly online estimator app to send us a detailed description of your website needs.</p>
                        <p class="btn"><a href="http://beardreview.com/priceestimator/hidden/" target="_blank">get started!</a></p>
                    </section>
                    <div class="latest">                
                        <div class="price-estimator" data-aos="slide-right"></div>
                    </div>
                </div>
            </div>
		</main><!-- #main -->
    </div><!-- #primary -->
    <?php 
        echo '<style>';
        foreach ($portrait_styles as $background) {
            echo $background ."\n";
        }
        echo '</style>';
    ?>
    <div class="" id="backdrop"></div>
<?php
get_footer();
