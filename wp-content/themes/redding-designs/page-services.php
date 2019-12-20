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
            <div class="services">
                <div class="header-spacer"></div>
                <div class="sub-banner banner-services">
                    <div class="sub-banner--text_container">
                        <h1 data-aos="slide-right">Services<h1><br>
                    </div>
                </div>
                
                <div class="container-white portfolio-text-banner">
                    <section>
                        <div class="portfolio-text--container">
                            <p>We cover a wide range of services from anything to do with developing or updating your website to all your printing needs.</p><br>
                            <p>If you are not a current client and would like to know if your website could use improvement, <a href="mailto: marketing@reddingdesigns.com">click here to contact our digital marketing department.</a></p>
                        </div>
                    </section>
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
                <div class="container-white container-white--services">
                    <div class="modal fade" id="popup">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close pr-4" onClick="closeModal()">
                                        <span style="color: black;">&times;</span>
                                    </button>
                                </div>
                                <div id="modal-body" class="modal-body">
                                </div>
                            </div>
                        </div>
                    </div>
                    <section>
                        <div class="flex">
                        <?php 
                            // Get Services from database
                            $wpb_all_query = new WP_Query(array('post_type'=>'service', 'post_status'=>'publish', 'posts_per_page'=>-1)); ?>
                            <?php if ( $wpb_all_query->have_posts() ) : while ( $wpb_all_query->have_posts() ) : ?>
                                <?php $wpb_all_query->the_post(); ?>
                                <?php echo '<div class="cell-service" id="' . get_field( 'icon' ) . '" data-aos="zoom-in">'; 
                                echo bulletPoints( get_field( 'icon' ) )['html'];
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
                                                    echo $icon;
                                                    echo '<p class="card-text"/>' . $td['c'] . '</p><br>';
                                                    $i++;
                                                } else if ( $i == 2 ) {
                                                    echo '<p style="display: none;" class="card-text hidden-description"/>' . $td['c'] . '</p>';
                                                }
                                            }
                                        }
                                    } 
                                    echo '<p class="btn"><a href="' . get_permalink() . '">' . get_field( 'link_button_text' ) . '</a></p>';
                                    echo '</div>';
                                    ?>
                            </div>
                            <?php endwhile; ?>
                            <?php wp_reset_postdata(); ?>
                            <?php else : ?>
                                <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
                            <?php endif; ?>
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
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->
    <div class="" id="backdrop"></div>
<?php
get_footer();