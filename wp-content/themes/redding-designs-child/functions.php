<?php
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );
function my_theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
 
}

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
        'has_archive' => true,
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