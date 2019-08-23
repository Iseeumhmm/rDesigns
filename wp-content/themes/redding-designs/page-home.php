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

	<div id="primary" class="content-area">
		<main id="main" class="site-main">
        
        <nav>
            <section data-aos="fade-in">
                <a href="index.html" title="Home"><div class="logo" data-aos="fade-in"></div></a>
                
                <button id="nav" data-aos="slide-left">Menu</button>

                <div id="palette" class="palette">

                    <ul>
                        <li><a onclick="modern()" title="Modern">
                            <span>Modern Look</span></a></li>
                        <li><a onclick="vintage()" title="Vintage">
                            <span>Vintage Feel</span></a></li>
                        <li><a onclick="eighties()" title="80s">
                            <span>80's Vibe</span></a></li>
                        <li><a onclick="monochromatic()" title="Monochromatic">
                            <span>Monochromatic</span></a></li>
                    </ul>
                </div>
                
                <br>
                
                <ul id="main-menu">
                    <li><a href="index.html" title="Home">Home<br>
                        <span>This page gives you an overview of everything we have to offer.</span></a></li>
                    
                    <li><a href="about/" title="About">About<br>
                        <span>Find out who we are and what is up with the Beard Seal of Approval.</span></a></li>
                    
                    <li><a href="portfolio/" title="Portfolio">Portfolio<br>
                        <span>We have a lot of work to show you so come back regularily to see what's new.</span></a></li>
                    
                    <li><a href="services/" title="Services">Services<br>
                        <span>Check out the services we offer to help you get your business off the ground.</span></a></li>
                    
                    <li><a href="contact/" title="Contact">Contact<br>
                        <span>Get a quote, call us or send us a message. We would love to hear from you!</span></a></li>
                    
                    <li><div class="palette"></div><br>
                        <span>Change the theme of this website for your viewing pleasure.</span></li>
                </ul>
                
                <div class="clear"></div>
            </section>
        </nav>
        
        <div class="banner-home" data-aos="fade-in">
            <section>
                <h1 data-aos="slide-right">You are serious about your business . . .<br>
                <span>. . . we are serious about helping.</span></h1>
                
                <p data-aos="slide-right">We believe a great website is the heart of any company and that’s where we come in.</p>
                
                <p class="btn" data-aos="zoom-in"><a href="contact/#quote" title="Get a Quote">Get a Quote</a></p>
            </section>
        </div>
        
        <div class="container-white">
            <section>
                <div class="flex">
                    <div class="cell-service" data-aos="zoom-in">
                        <a href="services/#web-design-development" title="Create Your Presence">
                            <div class="icon-service web-design-development"></div>

                            <h2>Web Design &amp; Development</h2>

                            <p>Gone are the days when businesses could afford to ignore their web presence which means your web presence is more important than ever.</p>

                            <p>Create Your Presence</p>
                        </a>
                    </div>

                    <div class="cell-service" data-aos="zoom-in">
                        <a href="services/#digital-marketing" title="Let's Raise the Bar">
                            <div class="icon-service digital-marketing"></div>

                            <h2>Digital Marketing</h2>

                            <p>Choosing to ignore online marketing is a bit like building a brand new storefront, but not telling anyone about it.</p>

                            <p>Let's Raise the Bar</p>
                        </a>
                    </div>

                    <div class="cell-service" data-aos="zoom-in">
                        <a href="services/#print-media-design" title="Go Tangible">
                            <div class="icon-service print-media-design"></div>

                            <h2>Print Media Design</h2>

                            <p>Sturdy. Attractive. Catchy. Made to be handled and stand up to abuse. Print media needs to be all of these things and we’ve got you covered.</p>

                            <p>Go Tangible</p>
                        </a>
                    </div>

                    <div class="cell-service" data-aos="zoom-in">
                        <a href="services/#logo-design-branding" title="Make a Name">
                            <div class="icon-service logo-branding"></div>

                            <h2>Logo Design &amp; Branding</h2>

                            <p>Your logo is one of the most important parts of your business. We are fully equiped to provide you with a unique, custom logo that sets you apart.</p>

                            <p>Make a Name</p>
                        </a>
                    </div>

                    <div class="cell-service" data-aos="zoom-in">
                        <a href="services/#internet-services" title="We'll Spin the Web">
                            <div class="icon-service internet-services"></div>

                            <h2>Internet Services</h2>

                            <p>The bread and butter of your internet presence, these services aren’t high-visibility, but they have a big impact on your success.</p>

                            <p>We'll Spin the Web</p>
                        </a>
                    </div>

                    <div class="cell-service" data-aos="zoom-in">
                        <a href="services/#beard-support" title="Check for Updates">
                            <div class="icon-service beard-support"></div>

                            <h2>The Beard Support</h2>

                            <p>Sometimes things go wrong with no explaination. It’s a good thing we have the support you need to ensure you can stay on top of your business.</p>

                            <p>Check for Updates</p>
                        </a>
                    </div>
                </div>
            </section>
        </div>
        
        <div class="container-grey">
            <section data-aos="zoom-in">
                <h3 class="heading">Our Latest Adventure</h3>
                
                <p><strong>Captiva Casual</strong></p>
                
                <p>Website redsign project with a new modern look. Fully mobile responsive, great imaging for a great Canadian product.</p>
                
                <p class="btn"><a href="http://www.captivacasual.com" title="Visit website" target="_blank">Visit Website</a></p>
            </section>
            
            <div class="latest">                
                <div class="desktop" data-aos="slide-right"></div>
                <div class="tablet" data-aos="slide-right"></div>
                <div class="laptop" data-aos="slide-right"></div>
                <div class="phone" data-aos="slide-right"></div>
            </div>
        </div>
        
        <div class="container-feed">
            <section data-aos="fade-in">
                <h4 class="heading white">Join us on Facebook</h4>
                
                <p class="white">Join us on our journey and get to know who we are.</p>
                
                <div class="phone-back" data-aos="zoom-in"></div>
                
                <div class="phone-front" data-aos="slide-up">
                    <div class="fb-page" data-href="https://www.facebook.com/reddingdesigns" data-small-header="true" data-width="450" data-height="500" data-hide-cover="true" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"></div></div>
                </div>
            </section>
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
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
