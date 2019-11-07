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
            <div class="seo_audit">
                <div class="header-spacer"></div>
                <div class="sub-banner banner-services">
                    <div class="sub-banner--text_container">
                        <h1 data-aos="slide-right">SEO Audit<br>
                    </div>
                </div>
                
                <!-- <div class="container-white portfolio-text-banner">
                    <section>
                        <div class="portfolio-text--container">
                            <p></p>
                        </div>
                    </section>
                </div> -->
                <div class="seo">
                    <!-- Begin MySiteAuditor -->
                    <script src="//cdn.mysiteauditor.com/audit-tool.js" type="text/javascript"></script>
                    <h2>What's Your SEO Score?</h2> 
                    <p>Enter the URL of any landing page or blog article and see how optimized it is for one keyword or phrase..</p>     
                    <div id="seogroup-embed"  data-apikey="f0cd02027f152892acb5a3fbcbecb077f0bc9549" data-language="english" data-type="banner" data-hex-color="#f4f4f4" data-hex-cta-color="#2ea2db" data-hex-text="#FFFFFF" data-load-bar-color="#2ea2db" data-font="Lato"></div>
                    <!-- End MySiteAuditor -->
                </div>
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->
    <div class="" id="backdrop"></div>
<?php
get_footer();