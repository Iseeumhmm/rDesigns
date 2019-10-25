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
            <div class="contact">
                <div class="header-spacer"></div>
                <div class="sub-banner banner-contact" data-aos="fade-in">
                    <div class="sub-banner--text_container">
                        <h1 data-aos="slide-right">Contact Us<br>
                    </div>
                </div>
                <div class="container-white">
                    <section class="meet-the-team">
                            <div class="flex">
                            <?php 
                            $portrait_styles = array();
                            $wpb_all_query = new WP_Query(array('post_type'=>'contact', 'post_status'=>'publish', 'posts_per_page'=>-1)); ?>
                            <?php if ( $wpb_all_query->have_posts() ) : while ( $wpb_all_query->have_posts() ) : ?>
                                <?php $wpb_all_query->the_post(); ?>
                                    <div class="cell-service">
                                        <div class="menu-icon--container">
                                            <?php echo bulletPoints( get_field('icon') )['html'];?>
                                        </div>
                                        <div class="card-body">
                                            <h2><?php the_title(); ?></h2>
                                            <p><?php echo get_field( 'description' ); ?></p>
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
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();