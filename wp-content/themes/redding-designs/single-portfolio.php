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
            <div class="case-study">
                <div class="header-spacer"></div>
                <div class="sub-banner" style="background-image: url('<?php echo get_the_post_thumbnail_url(); ?>'); background-size: cover;" data-aos="fade-in">
                    <div class="sub-banner--text_container">
                        <h1 data-aos="slide-right"><?php the_title();?><br>
                    </div>
                </div>
                <div class="arrow_container">
                    <a href="javascript:history.back()">
                        <div class="left-arrow"></div>
                    </a>
                </div>
                <?php $layout = get_field( 'case_study_layout' )?>
                <?php if( $layout == "Single Column" || $layout == "Both" ): ?>
                    <!-- ***************** Single Column ***************** -->
                    <div class="beard-container single_column container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="beard-container-text--subheading">
                                    <section data-aos="zoom-in">
                                        <h2 class="heading"><?php the_field( 'single_column_heading' )?></h2>
                                    </section>
                                </div>
                            </div>
                            <div class="col-lg-12 beard_logo-container" data-aos="slide-right"> 
                                <div class="single-column-image" style="background-image: url('<?php the_field( 'single_column_image' )?>')" title="Portfilio Image"></div>
                            </div>
                            <div class="col-lg-12">
                                <div class="beard-container-text--subheading first_body">
                                    <section data-aos="zoom-in">
                                    <p><?php echo get_field( 'two_column_body' )?></p>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                <?php if( $layout == "Double Column" || $layout == "Both" ): ?>
                    <!-- ***************** Double Column ***************** -->
                    <?php if( $layout == "Double Column" ): ?>
                    <!-- This if statement adds padding to the double column when displayed by itself -->
                    <div class="beard-container two_column-top two_column container-fluid">
                    <?php else: ?>
                    <div class="beard-container two_column container-fluid">
                    <?php endif; ?>
                        <div class="row">
                            <div class="col-lg-6 beard_logo-container" data-aos="slide-right">         
                                <div class="two-column-image" style="background-image: url('<?php the_field( 'two_column_image' )?>')" title="Portfilio Image"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="beard-container-text">
                                    <section data-aos="zoom-in">
                                        <h2 class="heading"><?php the_field( 'two_column_heading' )?></h2>
                                        <p><?php echo get_field( 'two_column_body' )?></p>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
