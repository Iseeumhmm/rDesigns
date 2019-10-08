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
                    <div class="sub-banner--text_container">
                        <h1 data-aos="slide-right">Our Portfolio<br>
                    </div>
                </div>
                
                <div class="container-white portfolio-text-banner">
                    <section>
                        <div class="portfolio-text--container">
                            <p>After being in the business of designing and developing websites for over 10 years, we’ve accumulated a lot of work that we’re proud of. As the internet world (constantly) changes, our designs and services have changed in order to keep up the pace. Take a peak at what we’ve done so far.</p>
                        </div>
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
                    <section>
                        <div class="cards container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-lg-4">
                                    <div class="card">
                                        <div class="card-border">
                                            <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                            <div class="card-body">
                                                <h5 class="card-title">William James Murray</h5>
                                                <p>(Born September 21, 1950)</p>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <a href="#" class="btn btn-primary">visit website</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="card">
                                        <div class="card-border">
                                            <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                            <div class="card-body">
                                                <h5 class="card-title">William James Murray</h5>
                                                <p>(Born September 21, 1950)</p>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <a href="#" class="btn btn-primary">visit website</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="card">
                                        <div class="card-border">
                                            <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                            <div class="card-body">
                                                <h5 class="card-title">William James Murray</h5>
                                                <p>(Born September 21, 1950)</p>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <a href="#" class="btn btn-primary">visit website</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="card">
                                        <div class="card-border">
                                            <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                            <div class="card-body">
                                                <h5 class="card-title">William James Murray</h5>
                                                <p>(Born September 21, 1950)</p>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <a href="#" class="btn btn-primary">visit website</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="card">
                                        <div class="card-border">
                                            <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                            <div class="card-body">
                                                <h5 class="card-title">William James Murray</h5>
                                                <p>(Born September 21, 1950)</p>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <a href="#" class="btn btn-primary">visit website</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="card">
                                        <div class="card-border">
                                            <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                            <div class="card-body">
                                                <h5 class="card-title">William James Murray</h5>
                                                <p>(Born September 21, 1950)</p>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <div class="menu-icon"></div>
                                                <p class="card-text">Contact</p><br>
                                                <a href="#" class="btn btn-primary">visit website</a>
                                            </div>
                                        </div>
                                    </div>
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