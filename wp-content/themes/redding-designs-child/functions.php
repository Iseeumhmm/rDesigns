<?php
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );
function my_theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
 
}
/**
 * CUSTOM CONTACTS POST TYPE
 */

function contact_init() {
    // set up Contact labels
    $labels = array(
        'name' => 'Contacts',
        'singular_name' => 'Contact',
        'add_new' => 'Add New Contact',
        'add_new_item' => 'New Contact',
        'edit_item' => 'Edit Contact',
        'new_item' => 'New Contact',
        'all_items' => 'All Contacts',
        'view_item' => 'View Contact',
        'search_items' => 'Search Contacts',
        'not_found' =>  'No Contacts Found',
        'not_found_in_trash' => 'No Contacts found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Contacts',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => false,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'Contact'),
        'query_var' => true,
        'menu_icon' => 'dashicons-buddicons-pm',
        'supports' => array(
			'title',
            'custom-fields'
        )
	);
    register_post_type( 'contact', $args );
    
}
add_action( 'init', 'contact_init' );

/**
 * CUSTOM TESTIMONIALS POST TYPE
 */

function testimonial_init() {
    // set up testimonial labels
    $labels = array(
        'name' => 'Testimonials',
        'singular_name' => 'Testimonial',
        'add_new' => 'Add New Testimonial',
        'add_new_item' => 'New Testimonial',
        'edit_item' => 'Edit Testimonial',
        'new_item' => 'New Testimonial',
        'all_items' => 'All Testimonials',
        'view_item' => 'View Testimonial',
        'search_items' => 'Search Testimonials',
        'not_found' =>  'No Testimonials Found',
        'not_found_in_trash' => 'No Testimonials found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Testimonials',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => false,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'testimonial'),
        'query_var' => true,
        'menu_icon' => 'dashicons-star-half',
        'supports' => array(
			'title',
            'custom-fields'
        )
	);
    register_post_type( 'Testimonial', $args );
    
}
add_action( 'init', 'testimonial_init' );

/**
 * CUSTOM PORTFOLIO POST TYPE
 */

function portfolio_init() {
    // set up Portfolio labels
    $labels = array(
        'name' => 'Portfolios',
        'singular_name' => 'Portfolio',
        'add_new' => 'Add New Portfolio',
        'add_new_item' => 'New Portfolio',
        'edit_item' => 'Edit Portfolio',
        'new_item' => 'New Portfolio',
        'all_items' => 'All Portfolios',
        'view_item' => 'View Portfolio',
        'search_items' => 'Search Portfolios',
        'not_found' =>  'No Portfolios Found',
        'not_found_in_trash' => 'No Portfolios found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Portfolios',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => false,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'Portfolio'),
        'query_var' => true,
        'menu_icon' => 'dashicons-portfolio',
        'supports' => array(
			'title',
            'custom-fields',
            'thumbnail'
        )
	);
    register_post_type( 'portfolio', $args );
    
}
add_action( 'init', 'portfolio_init' );

/**
 * CUSTOM SERVICES POST TYPE
 */

function Service_init() {
    // set up Service labels
    $labels = array(
        'name' => 'Services',
        'singular_name' => 'Service',
        'add_new' => 'Add New Service',
        'add_new_item' => 'New Service',
        'edit_item' => 'Edit Service',
        'new_item' => 'New Service',
        'all_items' => 'All Services',
        'view_item' => 'View Service',
        'search_items' => 'Search Services',
        'not_found' =>  'No Services Found',
        'not_found_in_trash' => 'No Services found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Services',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => false,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'Service'),
        'query_var' => true,
        'menu_icon' => 'dashicons-admin-tools',
        'supports' => array(
			'title',
            'custom-fields'
        )
	);
    register_post_type( 'service', $args );
    
}
add_action( 'init', 'service_init' );

/**
 * CUSTOM TEAM POST TYPE
 */

function team_init() {
    // set up Team labels
    $labels = array(
        'name' => 'Team',
        'singular_name' => 'Team Members',
        'add_new' => 'Add New Team Member',
        'add_new_item' => 'New Team Member',
        'edit_item' => 'Edit Team Member',
        'new_item' => 'New Team Member',
        'all_items' => 'All Team Members',
        'view_item' => 'View Team Member',
        'search_items' => 'Search Team Members',
        'not_found' =>  'No Team Members Found',
        'not_found_in_trash' => 'No Teams Members found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Team Members',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => false,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'team'),
        'query_var' => true,
        'menu_icon' => 'dashicons-buddicons-buddypress-logo',
        'supports' => array(
			'title',
            'custom-fields'
        )
	);
    register_post_type( 'Team', $args );
    
}
add_action( 'init', 'team_init' );



// RETURN ICON HTML

function bulletPoints( $point ) {
    switch ( $point ) {
        case "webDevelopment":
            $icon = array(
                "label"   => "Web Design & Development",
                "html"    => '<div class="menu-icon webDevelopment"></div>'
            );
            break;
        case "webDevelopmentLarge":
            $icon = array(
                "label"   => "Web Design & Development",
                "html"    => '<div class="icon-service web-design-development"></div>'
            );
            break;
        case "digitalMarketing":
            $icon = array(
                "label"   => "Digital Marketing",
                "html"    => '<div class="icon-service digital-marketing"></div>'
            );
            break;
        case "internetServices":
            $icon = array(
                "label"   => "Internet Services",
                "html"    => '<div class="icon-service internet-services"></div>'
            );
            break;
        case "logoDesign":
            $icon = array(
                "label"   => "Logo Design & Branding",
                "html"    => '<div class="icon-service logo-branding"></div>'
            );
            break;
        case "printMedia":
            $icon = array(
                "label"   => "Print Media Design",
                "html"    => '<div class="icon-service print-media-design"></div>'
            );
            break;
        case "photographyVideography":
            $icon = array(
                "label"   => "Photography & Videography",
                "html"    => '<div class="icon-service photography-videography"></div>'
            );
            break;
        case "customWordpress":
            $icon = array(
                "label"   => "Custom Wordpress Design",
                "html"    => '<div class="menu-icon customWordpress"></div>'
            );
            break;
        case "eCommerce":
            $icon = array(
                "label"   => "E-Commerce Solutions",
                "html"    => '<div class="menu-icon eCommerce"></div>'
            );
            break;
        case "cms":
            $icon = array(
                "label"   => "CMS",
                "html"    => '<div class="menu-icon cms"></div>'
            );
            break;
        case "googleStuff":
            $icon = array(
                "label"   => "Google Stuff",
                "html"    => '<div class="menu-icon googleStuff"></div>'
            );
            break;
        case "contentWriting":
            $icon = array(
                "label"   => "Content Writing",
                "html"    => '<div class="menu-icon contentWriting"></div>'
            );
            break;
        case "socialMedia":
            $icon = array(
                "label"   => "Social Media Management",
                "html"    => '<div class="menu-icon socialMedia"></div>'
            );
            break;
        case "businessCards":
            $icon = array(
                "label"   => "Business Cards & Letterheads",
                "html"    => '<div class="menu-icon businessCards"></div>'
            );
            break;
        case "flyersBrochures":
            $icon = array(
                "label"   => "Flyers & Brochures",
                "html"    => '<div class="menu-icon flyersBrochures"></div>'
            );
            break;
        case "cataloguesMenus":
            $icon = array(
                "label"   => "Catalogues & Menus",
                "html"    => '<div class="menu-icon cataloguesMenus"></div>'
            );
            break;
        case "signage":
            $icon = array(
                "label"   => "Signage",
                "html"    => '<div class="menu-icon signage"></div>'
            );
            break;
        case "identity":
            $icon = array(
                "label"   => "New Identity",
                "html"    => '<div class="menu-icon identity"></div>'
            );
            break;
        case "consistantDesign":
            $icon = array(
                "label"   => "Consistant Design",
                "html"    => '<div class="menu-icon consistantDesign"></div>'
            );
            break;
        case "readyForPrint":
            $icon = array(
                "label"   => "Ready for Print",
                "html"    => '<div class="menu-icon readyForPrint"></div>'
            );
            break;
        case "readyForWeb":
            $icon = array(
                "label"   => "Ready for Web",
                "html"    => '<div class="menu-icon readyForWeb"></div>'
            );
            break;
        case "domainRegistration":
            $icon = array(
                "label"   => "Domain Search & Registration",
                "html"    => '<div class="menu-icon domainRegistration"></div>'
            );
            break;
        case "webHosting":
            $icon = array(
                "label"   => "Web Hosting",
                "html"    => '<div class="menu-icon webHosting"></div>'
            );
            break;
        case "emailHosting":
            $icon = array(
                "label"   => "Email Hosting",
                "html"    => '<div class="menu-icon emailHosting"></div>'
            );
            break;
        case "invoicingAdministration":
            $icon = array(
                "label"   => "InvoicingAdministration",
                "html"    => '<div class="menu-icon invoicingAdministration"></div>'
            );
            break;
        case "sharedVps":
            $icon = array(
                "label"   => "Shared & VPS Servers",
                "html"    => '<div class="menu-icon sharedVps"></div>'
            );
            break;
        case "hours":
            $icon = array(
                "label"   => "Hours",
                "html"    => '<div class="menu-icon hours"></div>'
            );
            break;
        case "interiorExteriorPhotography":
            $icon = array(
                "label"   => "Interior / Exterior Photography",
                "html"    => '<div class="menu-icon interiorExteriorPhotography"></div>'
            );
            break;
        case "location":
            $icon = array(
                "label"   => "Location",
                "html"    => '<div class="menu-icon location"></div>'
            );
            break;
        case "photo":
            $icon = array(
                "label"   => "Photos",
                "html"    => '<div class="menu-icon photo"></div>'
            );
            break;
        case "productPhotography":
            $icon = array(
                "label"   => "Product Photography",
                "html"    => '<div class="menu-icon productPhotography"></div>'
            );
            break;
        case "talkingHeads":
            $icon = array(
                "label"   => "Talking Head Videos",
                "html"    => '<div class="menu-icon talkingHeads"></div>'
            );
            break;
        case "drone":
            $icon = array(
                "label"   => "Drone Footage",
                "html"    => '<div class="menu-icon drone"></div>'
            );
            break;
    }
    return $icon;
}


/**
 * 
 * DUPLICATE POSTS & PAGES
 */

 /*
 * Function for post duplication. Dups appear as drafts. User is redirected to the edit screen
 */
function rd_duplicate_post_as_draft(){
	global $wpdb;
	if (! ( isset( $_GET['post']) || isset( $_POST['post'])  || ( isset($_REQUEST['action']) && 'rd_duplicate_post_as_draft' == $_REQUEST['action'] ) ) ) {
		wp_die('No post to duplicate has been supplied!');
	}
 
	/*
	 * Nonce verification
	 */
	if ( !isset( $_GET['duplicate_nonce'] ) || !wp_verify_nonce( $_GET['duplicate_nonce'], basename( __FILE__ ) ) )
		return;
 
	/*
	 * get the original post id
	 */
	$post_id = (isset($_GET['post']) ? absint( $_GET['post'] ) : absint( $_POST['post'] ) );
	/*
	 * and all the original post data then
	 */
	$post = get_post( $post_id );
 
	/*
	 * if you don't want current user to be the new post author,
	 * then change next couple of lines to this: $new_post_author = $post->post_author;
	 */
	$current_user = wp_get_current_user();
	$new_post_author = $current_user->ID;
 
	/*
	 * if post data exists, create the post duplicate
	 */
	if (isset( $post ) && $post != null) {
 
		/*
		 * new post data array
		 */
		$args = array(
			'comment_status' => $post->comment_status,
			'ping_status'    => $post->ping_status,
			'post_author'    => $new_post_author,
			'post_content'   => $post->post_content,
			'post_excerpt'   => $post->post_excerpt,
			'post_name'      => $post->post_name,
			'post_parent'    => $post->post_parent,
			'post_password'  => $post->post_password,
			'post_status'    => 'draft',
			'post_title'     => $post->post_title,
			'post_type'      => $post->post_type,
			'to_ping'        => $post->to_ping,
			'menu_order'     => $post->menu_order
		);
 
		/*
		 * insert the post by wp_insert_post() function
		 */
		$new_post_id = wp_insert_post( $args );
 
		/*
		 * get all current post terms ad set them to the new post draft
		 */
		$taxonomies = get_object_taxonomies($post->post_type); // returns array of taxonomy names for post type, ex array("category", "post_tag");
		foreach ($taxonomies as $taxonomy) {
			$post_terms = wp_get_object_terms($post_id, $taxonomy, array('fields' => 'slugs'));
			wp_set_object_terms($new_post_id, $post_terms, $taxonomy, false);
		}
 
		/*
		 * duplicate all post meta just in two SQL queries
		 */
		$post_meta_infos = $wpdb->get_results("SELECT meta_key, meta_value FROM $wpdb->postmeta WHERE post_id=$post_id");
		if (count($post_meta_infos)!=0) {
			$sql_query = "INSERT INTO $wpdb->postmeta (post_id, meta_key, meta_value) ";
			foreach ($post_meta_infos as $meta_info) {
				$meta_key = $meta_info->meta_key;
				if( $meta_key == '_wp_old_slug' ) continue;
				$meta_value = addslashes($meta_info->meta_value);
				$sql_query_sel[]= "SELECT $new_post_id, '$meta_key', '$meta_value'";
			}
			$sql_query.= implode(" UNION ALL ", $sql_query_sel);
			$wpdb->query($sql_query);
		}
 
 
		/*
		 * finally, redirect to the edit post screen for the new draft
		 */
		wp_redirect( admin_url( 'post.php?action=edit&post=' . $new_post_id ) );
		exit;
	} else {
		wp_die('Post creation failed, could not find original post: ' . $post_id);
	}
}
add_action( 'admin_action_rd_duplicate_post_as_draft', 'rd_duplicate_post_as_draft' );
 
/*
 * Add the duplicate link to action list for post_row_actions
 */
function rd_duplicate_post_link( $actions, $post ) {
	if (current_user_can('edit_posts')) {
		$actions['duplicate'] = '<a href="' . wp_nonce_url('admin.php?action=rd_duplicate_post_as_draft&post=' . $post->ID, basename(__FILE__), 'duplicate_nonce' ) . '" title="Duplicate this item" rel="permalink">Duplicate</a>';
	}
	return $actions;
}
 
add_filter( 'post_row_actions', 'rd_duplicate_post_link', 10, 2 );
add_filter('page_row_actions', 'rd_duplicate_post_link', 10, 2);
