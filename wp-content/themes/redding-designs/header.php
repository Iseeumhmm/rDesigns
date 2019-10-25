<?php
/**
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Redding_Designs
 */
?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<meta name="description" content="You Take Care of Your Business, Let the Beards do the Rest. We believe a great website is the heart of any company and that’s where we come in.">
        
	<meta name="keywords" content="London, Ontario, Small Business, Web Development, Business Cards, Sign design, aylmer ontario website design, wordpress, css, html, websites, local website design company, professional design, Affordable web design">
	
	
	<!--css-->
	<link href="<?php echo get_stylesheet_directory_uri() ?>/css/owl.carousel.css" rel="stylesheet" type="text/css">
	<link href="<?php echo get_stylesheet_directory_uri() ?>/css/owl.theme.default.css" rel="stylesheet" type="text/css">
	
	<link href="<?php echo get_stylesheet_directory_uri() ?>/css/framework.css" rel="stylesheet" type="text/css">
	<link id="stylesheet" href="<?php echo get_stylesheet_directory_uri() ?>/css/modern.css" rel="stylesheet" type="text/css">
	<script>
		let selectedStyle = "modern";
	</script>
	<!-- <link id="stylesheet" href="<?php echo get_stylesheet_directory_uri() ?>/css/victorian.css" rel="stylesheet" type="text/css">
	 -->
	
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet">      
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
	<link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" rel="stylesheet">
	
	
	<!--og tags-->
	<meta property="og:type" content="business.business">
	<meta property="og:title" content="Redding Designs Inc.">
	<meta property="og:url" content="http://reddingdesigns.com/">
	<meta property="og:image" content="http://reddingdesigns.com/images/logos/beard.png">
	<meta property="business:contact_data:street_address" content="48 Talbot St East">
	<meta property="business:contact_data:locality" content="Aylmer">
	<meta property="business:contact_data:region" content="Ontario">
	<meta property="business:contact_data:postal_code" content="N5H 1H4">
	<meta property="business:contact_data:country_name" content="Canada">
	
	
	<!--twitter card-->
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@ReddingDesigns">
	<meta name="twitter:title" content="Redding Designs Inc.">
	<meta name="twitter:description" content="You Take Care of Your Business, Let the Beards do the Rest. We believe a great website is the heart of any company and that’s where we come in.">
	<meta name="twitter:image" content="http://reddingdesigns.com/images/logos/beard.png">
	
	
	<!--favicons-->
	<link rel="apple-touch-icon" sizes="180x180" href="<?php echo get_stylesheet_directory_uri() ?>/favicons/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="<?php echo get_stylesheet_directory_uri() ?>/favicons/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_stylesheet_directory_uri() ?>/favicons/favicon-16x16.png">
	<link rel="manifest" href="<?php echo get_stylesheet_directory_uri() ?>/favicons/site.webmanifest">
	<link rel="mask-icon" href="<?php echo get_stylesheet_directory_uri() ?>/favicons/safari-pinned-tab.svg" color="#1a1a1a">
	<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri() ?>/favicons/favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:300,400|PT+Serif|Playfair+Display:400,900&display=swap" rel="stylesheet">
	<meta name="msapplication-TileColor" content="#1a1a1a">
	<meta name="msapplication-config" content="<?php echo get_stylesheet_directory_uri() ?>/favicons/browserconfig.xml">
	<meta name="theme-color" content="#ffffff">
	
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-16273785-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-16273785-1');
	</script>
	
	
	<!--hotjar tracking-->
	<!-- <script>
		(function(h,o,t,j,a,r){
			h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
			h._hjSettings={hjid:337998,hjsv:5};
			a=o.getElementsByTagName('head')[0];
			r=o.createElement('script');r.async=1;
			r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
			a.appendChild(r);
		})(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
	</script> -->

	<?php wp_head(); ?>
</head>
<body id="top"  <?php body_class(); ?>>
<div id="page" class="site">

	<div id="content" class="site-content">

	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<nav>
				<section data-aos="fade-in">
					<a href="<?php echo get_site_url(); ?>/" title="Home"><div class="logo" data-aos="fade-in">
						<div class="logo-text">
							<p>Redding Designs Inc.</p>
							<p>Digital Marketing & Web Development</p>
						</div>
					</div></a>
				
					<button id="nav" data-aos="slide-left">Menu</button>

					<div id="palette" class="palette">

						<ul>
							<li><a onclick="modern();" title="Modern">Modern Look<br>
								<span>Modern Look</span></a></li>
							<li><a onclick="vintage();" title="Vintage">Victorian<br>
								<span>Victorian</span></a></li>
							<li><a onclick="eighties();" title="80s">80's Vibe<br>
								<span>80's Vibe</span></a></li>
							<li><a onclick="monochromatic();" title="Monochromatic">Monochromatic<br>
								<span>Monochromatic</span></a></li>
						</ul>
					</div>
					<br>
					
					<ul id="main-menu">
						<li>
							<div class="container-fluid w-100">
								<div class="row w-100">
									<div class="col-3">
										<div class="menu-icon interiorExteriorPhotography"></div>
									</div>
									<div class="col-9">
										<a href="<?php echo get_site_url(); ?>/" title="Home">Home<br>
										<span>This page gives you an overview of everything we have to offer.</span></a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="container-fluid w-100">
								<div class="row w-100">
									<div class="col-3">
										<div class="menu-icon cataloguesMenus"></div>
									</div>
									<div class="col-9">
										<a href="<?php echo get_site_url(); ?>/about-us/" title="About">About<br>
										<span>Find out who we are and what is up with the Beard Seal of Approval.</span></a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="container-fluid w-100">
								<div class="row w-100">
									<div class="col-3">
										<div class="menu-icon photo"></div>
									</div>
									<div class="col-9">
										<a href="<?php echo get_site_url(); ?>/portfolio/" title="Portfolio">Portfolio<br>
										<span>We have a lot of work to show you so come back regularily to see what's new.</span></a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="container-fluid w-100">
								<div class="row w-100">
									<div class="col-3">
										<div class="menu-icon logoDesign"></div>
									</div>
									<div class="col-9">
										<a href="<?php echo get_site_url(); ?>/services/" title="Services">Services<br>
										<span>Check out the services we offer to help you get your business off the ground.</span></a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="container-fluid w-100">
								<div class="row w-100">
									<div class="col-3">
										<div class="menu-icon emailHosting"></div>
									</div>
									<div class="col-9">
										<a href="<?php echo get_site_url(); ?>/contact/" title="Contact">Contact<br>
										<span>Get a quote, call us or send us a message. We would love to hear from you!</span></a>
									</div>
								</div>
							</div>
						</li>
						<!-- <li><div class="palette"></div><br>
							<span>Change the theme of this website for your viewing pleasure.</span></li> -->
					</ul>
					
					<div class="clear"></div>
				</section>
			</nav>