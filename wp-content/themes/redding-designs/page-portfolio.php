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
                        <h1 data-aos="slide-right">Our Portfolio</h1><br>
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
                        
                        <p><strong><?php the_field( "client_name" ); ?></strong></p>
                        
                        <p><?php the_field( "description" ); ?></p>
                        
                        <p class="btn"><a href="<?php the_field( "website" ); ?>" title="<?php the_field( "client_name" ); ?>" target="_blank">Visit Website</a></p>
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
                        <?php 
                            // Get Services from database
                            $wpb_all_query = new WP_Query(array('post_type'=>'portfolio', 'post_status'=>'publish', 'posts_per_page'=>-1)); ?>
                            <?php if ( $wpb_all_query->have_posts() ) : while ( $wpb_all_query->have_posts() ) : ?>
                                <?php $wpb_all_query->the_post(); ?>
                                <div class="cell-service" data-aos="zoom-in"> 
                                <div class="portfolio-main_image" style="background-image: url('<?php the_field( 'image' )?>')"></div>
                                <?php
                                echo '<div class="card-body">';
                                echo '<h2>' . get_the_title() . '</h2>';
                                echo '<p>' . get_field( "sub_heading" ) . '</p>';
                                ?>
                                <?php
                                    $table = get_field( 'bullet_points' );
                                    if ( ! empty ( $table ) ) {
                                        foreach ( $table['body'] as $tr ) {
                                            foreach ( $tr as $td ) {
                                                $bullets = bulletPoints( $td['c'] );
                                                echo $bullets['html'];
                                                echo '<p class="card-text">' . $bullets['label'] . '</p><br>';
                                            }
                                        }
                                    } 
                                    echo '<p class="btn"><a href="' . get_field( 'website' ) . '">visit website</a></p>';
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
                </div>
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->
<?php
get_footer();