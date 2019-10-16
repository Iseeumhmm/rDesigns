<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Redding_Designs
 */

?>

		</div><!-- #content -->
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
		<footer id="colophon" class="site-footer">
			<section>
				<ul>
					<li><a href="privacy-policy/" title="Privacy Policy">Privacy Policy</a></li>
					<li>|</li>
					<li><a href="terms-conditions/" title="Terms and Conditions">Terms &amp; Conditions</a></li>
					<li>|</li>
					<li><a href="sitemap/" title="Sitemap">Sitemap</a></li>
				</ul>
			</section>
		</footer>
			
			
		<!--SCRIPTS-->        
		<script src="<?php echo get_stylesheet_directory_uri(); ?>/js/jquery.min.js"></script>
		
		<!--owl carousel-->
		<script src="<?php echo get_stylesheet_directory_uri(); ?>/js/owl.carousel.js"></script>
		<script>
			$('.owl-carousel').owlCarousel({
				loop:true,
				margin:10,
				nav:false,
				items:1
			})
		</script>
		
		<!--navigation-->
		<script>
			
			function changeStyle(style) {
				let clients = $( ".client" ).toArray();
				for (i = 0; i < clients.length/3; i++) {
					console.log('inside loop: ' + i);
					let client = $( ".client_" + i ).toArray();
					client.forEach(function(c) {
						c.removeAttribute('style');
						clientNum = "client_" + i;
						const theStyle = style + "_" + i;
						c.className = '';
						c.className = "client " + clientNum + " " + theStyle;
					});
				}
			}
			
			function modern() {
				$('#stylesheet').attr('href','<?php echo get_stylesheet_directory_uri(); ?>/css/modern.css');
				changeStyle("modern");
			}
			function vintage() {
				$('#stylesheet').attr('href','<?php echo get_stylesheet_directory_uri(); ?>/css/victorian.css');
				changeStyle("victorian");
			}
			function eighties() {
				$('#stylesheet').attr('href','<?php echo get_stylesheet_directory_uri(); ?>/css/80s.css');
				changeStyle("eighties");
			}
			function monochromatic() {
				$('#stylesheet').attr('href','<?php echo get_stylesheet_directory_uri(); ?>/css/monochromatic.css');
				changeStyle("monochrome");
			}
			$(document).ready(function() {
				
				$('#nav').click(function() {
					$('#palette ul').hide();
					$('#main-menu').slideToggle("fast");
				});
				$('#palette').click(function() {
					$('#main-menu').hide();
					$('#palette ul').slideToggle("fast");
				});
			});
		</script>
		<!--smooth scroll-->
		<script>
			$(function() {
				$('a[href*="#"]:not([href="#"])').click(function() {
				if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
					var target = $(this.hash);
					target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
					if (target.length) {
					$('html, body').animate({
						scrollTop: target.offset().top
					}, 500);
					return false;
					}
				}
				});
			});
		</script>
			
		<!--aos-->
		<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>        
		<script>
			AOS.init({
				duration: 800,
			})
		</script>
		
		<!--facebook feed-->
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
		</script>
    
	</body>

</html>

	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
