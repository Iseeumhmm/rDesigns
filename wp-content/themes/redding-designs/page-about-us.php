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
            <div class="about-us">
                <div class="header-spacer"></div>
                <div class="sub-banner banner-about" data-aos="fade-in">
                    <div class="sub-banner--text_container">
                        <h1 data-aos="slide-right">About Us<br>
                    </div>
                </div>
                
                <div class="container-white portfolio-text-banner">
                    <section>
                        <div class="portfolio-text--container">
                            <p>Redding Designs Inc. is a web development company that started over 12 years ago and has grown to the beard-loving multi-media company it is today. We believe a great website is the heart of any company and that’s where we come in.</p>
                        </div>
                    </section>
                </div>
                <div class="beard-container container-fluid">
                    <div class="row">
                        <div class="col-lg-4 beard_logo-container" data-aos="slide-right">         
                            <div class="beard_logo" style="background-image: url('<?php the_field( 'beard_logo' )?>')"></div>
                        </div>
                        <div class="col-lg-8">
                            <div class="beard-container-text">
                                <section data-aos="zoom-in">
                                    <h3 class="heading">What's With the Beard?</h3>
                                    <p>It is an elite group of businesses who can count themselves lucky enough to have the beard seal of approval on their website. At Redding Designs Inc. we don’t just create awesome websites, we create beard approved websites. What does that mean you ask?</p>
                                    <p>It means having a modern design, being mobile friendly, easy to navigate, and it must have cool, in your face, pictures and graphics. If you are not in possession of a website with the beard seal of approval give us a shout and together, using our formidable powers of design, we will correct this problem.</p>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-white">
                    <section class="meet-the-team">
                        <h1>Meet the Team</h1>
                        <div class="flex">
                        <?php 
                            $portrait_styles = array();
                            // Get Team Members from database
                            $wpb_all_query = new WP_Query(array('post_type'=>'Team', 'post_status'=>'publish', 'posts_per_page'=>-1)); ?>
                            <?php 
                            $i = 0;
                            // Create an array of background styles with locations to images from ACF
                            foreach ($wpb_all_query->posts as $post) {
                                $modern = ".modern_$i { background-image: url('" . get_field( "modern_image") . "');}";
                                $victorian = ".victorian_$i { background-image: url('" . get_field( "victorian_image") . "');}";
                                $eighties = ".eighties_$i { background-image: url('" . get_field( "80s_image") . "');}";
                                $monochrome = ".monochrome_$i { background-image: url('" . get_field( "monochrome_image") . "');}";
                                $portrait_styles[] = $modern;
                                $portrait_styles[] = $victorian;
                                $portrait_styles[] = $eighties;
                                $portrait_styles[] = $monochrome;
                                $i++;
                            }
                            ?>
                            <?php $i = 0 ?>
                            <?php if ( $wpb_all_query->have_posts() ) : while ( $wpb_all_query->have_posts() ) : ?>
                                <?php $wpb_all_query->the_post(); ?>
                                    <div class="cell-service" data-aos="zoom-in">
                                        <div class="card-image-top dynamic client_<?php echo $i; ?>" style="background-image: url('<?php the_field('modern_image');?>')"></div>
                                        <div class="card-body">
                                            <h2><?php the_title(); ?></h2>
                                            <p><?php the_field('title');?></p>
                                            <?php if( get_field('phone_number') ): ?>
                                                <p class="team-phone_number">Phone: <?php the_field('phone_number'); ?></p>
                                            <?php endif; ?>
                                            <p><?php echo get_field( 'bio' ); ?></p>
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
                <div class="container-grey--video">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xl-6 video" data-aos="slide-right">
                                <div class="video_container--outer">
                                    <div class="video_container--inner">
                                        <div id="vidimg" style="background-image: url('<?php echo get_stylesheet_directory_uri() ?>/assets/modern/images/thumbs/ctv.png')"/></div>
                                        <iframe id="unlocked-video" src="https://webapps.9c9media.com/vidi-player/1.7.10/share/iframe.html?currentId=571381&config=ctvnews/share.json&kruxId=ImoeZsch&rsid=bellmedianewsprod,bellmediaglobalprod&siteName=CTVNews&cid=%5B%7B%22contentId%22%3A571381%2C%22ad%22%3A%7B%22adsite%22%3A%22ctv.ctvnews%22%2C%22adzone%22%3A%22embed%22%7D%7D%5D" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                    </div>
                                </div>
                                <script type="application/javascript">
                                // Adapted from https://stackoverflow.com/a/32138108
                                var monitor = setInterval(function(){
                                    var elem = document.activeElement;
                                    if(elem && elem.id == 'unlocked-video'){
                                    document.getElementById('vidimg').style.display='none';
                                    clearInterval(monitor);
                                    }
                                }, 100);
                                </script>
                            </div>
                            <div class="col-xl-6 d-flex align-items-center">
                                <section data-aos="zoom-in">
                                    <p><span>it may be old news now but...</span></p>
                                    <h3 class="heading">We were on London CTV News at 6!</h3>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</main><!-- #main -->
    </div><!-- #primary -->
    <!-- Render styles from array to the page for use with JS when user switches page styles -->
    <?php 
        echo '<style>';
        foreach ($portrait_styles as $background) {
            echo $background ."\n";
        }
        echo '</style>';
    ?>
<?php
get_footer();