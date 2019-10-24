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
                <div class="sub-banner banner-portfolio" data-aos="fade-in">
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

                <div class="container-white container-white--services">
                    <section>
                        <div class="flex">
                            <div class="cell-service" data-aos="zoom-in">
                                <a href="services/#web-design-development" title="Create Your Presence">
                                    <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                    <div class="card-body">
                                        <h2>Web Design &amp; Development</h2>
                                        <p>Virtual Presence</p>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <p class="btn"><a href="#">the specifics</a></p>
                                    </div>
                                </a>
                            </div>

                            <div class="cell-service" data-aos="zoom-in">
                                <a href="services/#digital-marketing" title="Let's Raise the Bar">
                                    <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                        <div class="card-body">
                                        <h2>Digital Marketing</h2>
                                        <p>Raising the Bar</p>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <p class="btn"><a href="#">the specifics</a></p>
                                    </div>
                                </a>
                            </div>

                            <div class="cell-service" data-aos="zoom-in">
                                <a href="services/#print-media-design" title="Go Tangible">
                                    <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                        <div class="card-body">
                                        <h2>Print Media Design</h2>
                                        <p>Tangible is nice</p>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <p class="btn"><a href="#">the specifics</a></p>
                                    </div>
                                </a>
                            </div>

                            <div class="cell-service" data-aos="zoom-in">
                                <a href="services/#logo-design-branding" title="Make a Name">
                                    <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                        <div class="card-body">
                                        <h2>Logo Design &amp; Branding</h2>
                                        <p>Making a Name</p>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <p class="btn"><a href="#">the specifics</a></p>
                                    </div>
                                </a>
                            </div>

                            <div class="cell-service" data-aos="zoom-in">
                                <a href="services/#internet-services" title="We'll Spin the Web">
                                    <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                        <div class="card-body">
                                        <h2>Internet Services</h2>
                                        <p>Spider Work</p>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <p class="btn"><a href="#">the specifics</a></p>
                                    </div>
                                </a>
                            </div>

                            <div class="cell-service" data-aos="zoom-in">
                                <a href="services/#beard-support" title="Custom Photography/Videography">
                                    <img class="card-img-top" src="https://www.fillmurray.com/300/200" alt="website">
                                        <div class="card-body">
                                        <h2>Photography &amp; Videography</h2>
                                        <p>Virtual Presence</p>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <div class="menu-icon"></div>
                                        <p class="card-text">Contact</p><br>
                                        <p class="btn"><a href="#">the specifics</a></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();