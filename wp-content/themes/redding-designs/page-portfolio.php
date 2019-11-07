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
                        <?php
                            $table = get_field( 'portfolio_page_only_bullet_points' );
                            if ( ! empty ( $table ) ) {
                                foreach ( $table['body'] as $tr ) {
                                    $i=true;
                                    foreach ( $tr as $td ) {
                                        if ( $i == true ) {
                                            $bullets = bulletPoints( $td['c'] );
                                            echo $bullets['html'];
                                            $i=false;
                                        } else {
                                            echo '<p class="bullet-text">' . $td['c'] . '</p><br>';
                                            $i=true;
                                        }
                                        
                                    }

                                }
                            } 
                        ?>
                    </section>
                    <div class="btn-container">
                        <p class="btn"><a href="<?php the_field( "website" ); ?>" title="<?php the_field( "client_name" ); ?>" target="_blank">Visit Website</a></p>
                    </div>
                    
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
                            $paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
                            $args = array(
                                'post_type' => 'portfolio',
                                'posts_per_page' => 6,
                                'paged' => $paged
                            );
                            $loop = new WP_Query( $args );
                            while ( $loop->have_posts() ) : $loop->the_post(); ?>
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
                            <div class="pagination">
                                <?php
                                $big = 999999999;
                                echo paginate_links( array(
                                    'base' => str_replace( $big, '%#%', get_pagenum_link( $big ) ),
                                    'format' => '?paged=%#%',
                                    'current' => max( 1, get_query_var('paged') ),
                                    'total' => $loop->max_num_pages,
                                    'prev_text' => '&laquo;',
                                    'next_text' => '&raquo;'
                                ) );
                            ?>
                            </div>
                            <?php wp_reset_postdata(); ?>
                        </div>
                    </section>
                </div>
                <div class="container-grey">
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