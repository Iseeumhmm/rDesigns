<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Redding_Designs
 */

get_header();
?>
	<div id="primary" class="content-area services-modal post-template">
		<main id="main" class="site-main">
            <div class="header-spacer"></div>
            <div class="sub-banner <?php echo getPage( get_field( 'icon' ))?>">
                <div class="sub-banner--text_container">
                    <h1 class="header-text" data-aos="slide-right"></h1><br>
                </div>
            </div>
		    <div class="container-white container-white--services">
                <section>
                    <div class="arrow_container">
                        <a href="javascript:history.back()">
                            <div class="left-arrow first"></div>
                        </a>
                        <a class="modal-service_icon" href="<?php echo get_site_url(); ?>/Service/web-design-development">
                            <div data-id="Web Design & Development" class="page_icon left-arrow menu-icon webDevelopment"></div>
                        </a>
                        <a class="modal-service_icon" href="<?php echo get_site_url(); ?>/Service/digital-marketing">
                            <div  data-id="Digital Marketing" class="page_icon left-arrow menu-icon consistantDesign"></div>
                        </a>
                        <a class="modal-service_icon" href="<?php echo get_site_url(); ?>/Service/print-media-design">
                            <div data-id="Print Media Design" class="page_icon left-arrow menu-icon readyForPrint"></div>
                        </a>
                        <a class="modal-service_icon" href="<?php echo get_site_url(); ?>/Service/logo-design-branding">
                            <div data-id="Logo Design & Branding" class="page_icon left-arrow menu-icon logoDesign"></div>
                        </a>
                        <a class="modal-service_icon" href="<?php echo get_site_url(); ?>/Service/internet-services">
                            <div data-id="Internet Services" class="page_icon left-arrow menu-icon domainRegistration"></div>
                        </a>
                        <a class="modal-service_icon" href="<?php echo get_site_url(); ?>/Service/photography-videography">
                            <div data-id="Photography & Videography" class="page_icon left-arrow menu-icon productPhotography"></div>
                        </a>
                    </div>
                    <div class="flex">
                        <?php while ( have_posts() ) :
                        the_post(); ?>
                        <?php //echo '<div class="cell-service" id="' . get_field( 'icon' ) . '" data-aos="zoom-in">'; 
                        echo '<div class="large_icon">';
                        echo bulletPoints( get_field( 'icon' ) )['html'];
                        echo '</div>';
                        echo '<div id="page-label" data-id="' . bulletPoints( get_field( 'icon' ) )['label'] . '" style="display: hidden;"></div>';
                        echo '<div class="card-body">';
                        echo '<h2>' . get_the_title() . '</h2>';
                        echo '<p>' . get_field( "sub_heading" ) . '</p>';
                        ?>
                        <?php
                            $table = get_field( 'sub_descriptions' );
                            if ( ! empty ( $table ) ) {
                                foreach ( $table['body'] as $tr ) {
                                    $i=0;
                                    $icon="";
                                    foreach ( $tr as $td ) {
                                        if ( $i == 0 ) {
                                            $icon = bulletPoints( $td['c'] )['html'];
                                            $i++;
                                        } else if ( $i == 1 ){
                                            echo '<div class="bullets">';
                                            echo $icon;
                                            echo '<p class="card-text"/>' . $td['c'] . '</p><br>';
                                            echo '</div>';
                                            $i++;
                                        } else if ( $i == 2 ) {
                                            echo '<p class="card-text"/>' . $td['c'] . '</p>';
                                        }
                                    }
                                }
                            } 
                        ?>
                        <!-- </div> -->
                        <?php endwhile; ?>
                        <?php wp_reset_postdata(); ?>
                    </div>
                </section>
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
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
