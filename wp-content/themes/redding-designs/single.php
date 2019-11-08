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

	<div id="primary" class="content-area post-template">
		<main id="main" class="site-main">
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
                        <?php while ( have_posts() ) :
    							the_post(); ?>
                                <?php //echo '<div class="cell-service" id="' . get_field( 'icon' ) . '" data-aos="zoom-in">'; 
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
                                    echo '<p class="btn"><a href="' . get_site_url() . '/contact">' . get_field( 'link_button_text' ) . '</a></p>';
                                    echo '</div>';
                                    ?>
                            <!-- </div> -->
                            <?php endwhile; ?>
                            <?php wp_reset_postdata(); ?>
                        </div>
                    </section>
                </div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
