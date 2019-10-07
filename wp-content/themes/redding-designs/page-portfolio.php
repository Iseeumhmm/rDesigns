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
            <div class="portfolio">
                <div class="header-spacer"></div>
                <div class="sub-banner" data-aos="fade-in">
                    <section>
                        <h1 data-aos="slide-right">Our Portfolio<br>
                    </section>
                </div>
                
                <div class="container-white portfolio-text-banner">
                    <section>
                        <p>After being in the business of designing and developing websites for over 10 years, we’ve accumulated a lot of work that we’re proud of. As the internet world (constantly) changes, our designs and services have changed in order to keep up the pace. Take a peak at what we’ve done so far.</p>
                    </section>
                </div>
                
                <div class="container-grey">
                    <section data-aos="zoom-in">
                        <h3 class="heading">Our Latest Adventure</h3>
                        
                        <p><strong>Client Name</strong></p>
                        
                        <p>A short description of the website and what we did will go here.</p>
                        
                        <p class="btn"><a href="http://www.captivacasual.com" title="Visit website" target="_blank">Visit Website</a></p>
                    </section>
                    
                    <div class="latest">                
                        <div class="desktop" data-aos="slide-right"></div>
                        <div class="tablet" data-aos="slide-right"></div>
                        <div class="laptop" data-aos="slide-right"></div>
                        <div class="phone" data-aos="slide-right"></div>
                    </div>
                </div>
                
                <div class="container-white">
                    <section class="narrow">
                        <div class="owl-carousel owl-theme">
                            <div class="item" data-aos="slide-right">
                                <div class="client paul-lafrance"></div>
                                
                                <div class="client-review">
                                    <p class="black"><strong>Exceeded beyond my own creative vision.</strong></p>
                                    
                                    <p>"I have worked with a number of different website companies over the years and have always been left wanting, until I worked with Redding Designs. Their personal service and ability to exceed beyond my own creative vision makes Redding Designs a very rare company that I feel very fortunate to have found."</p>
                                    
                                    <p><a href="https://paullafrancedesign.com/" title="Visit Paul Lafrance's Website" target="_blank">Visit paullafrancedesign.com</a></p>
                                    
                                    <p class="client-name">~ Paul Lafrance, HGTV</p>
                                </div>
                            </div>
                            
                            <div class="item" data-aos="zoom-in">
                                <div class="client kate-campbell"></div>
                                
                                <div class="client-review">
                                    <p class="black"><strong>Extremely responsive, creative &amp; attentive.</strong></p>
                                    
                                    <p>"Rob Redding and his team are the real deal. Not only are they complete professionals, they're extremely responsive, creative and attentive. I've felt totally at ease throughout the whole website design and logo design process which is no small feat because my website and logo are integral to my business."</p>
                                    
                                    <p><a href="https://katebuilds.ca/" title="Visit Kate Campbell's Website" target="_blank">Visit katebuilds.ca</a></p>
                                    
                                    <p class="client-name">~ Kate Campbell, HGTV</p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                
                <div class="container-social-media">
                    <a href="https://www.facebook.com/ReddingDesigns" title="Like us on Facebook" target="_blank">
                        <i class="fa fa-facebook" data-aos="zoom-in"></i>
                    </a>
                        
                    <a href="https://twitter.com/ReddingDesigns" title="Follow us on Twitter" target="_blank">
                        <i class="fa fa-twitter" data-aos="zoom-in"></i>
                    </a>
                        
                    <a href="https://www.instagram.com/reddingdesigns/" title="Follow us on Instagram" target="_blank">
                        <i class="fa fa-instagram" data-aos="zoom-in"></i>
                    </a>
                </div>
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();