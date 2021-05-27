<?php the_field(); // = echo get_field(); ?>

<?php
// Prefilter Uploads https://www.advancedcustomfields.com/resources/acf-upload_prefilter/
// Modifers
// This filter provides modifiers to target specific fields. The following filter names are available:

    // acf/upload_prefilter Applies to all fields.
    // acf/upload_prefilter/type={$type} Applies to all fields of a specific type.
    // acf/upload_prefilter/name={$name} Applies to all fields of a specific name.
    // acf/upload_prefilter/key={$key} Applies to all fields of a specific key.

// Example
// This example demonstrates how to restrict all uploads from ACF fields (Image, File, Gallery) to admin users only.
// functions.php

add_filter('acf/upload_prefilter', 'my_acf_upload_prefilter', 10, 3);
function my_acf_upload_prefilter( $errors, $file, $field ){

    // Check if not admin.
    if( !current_user_can('manage_options') ) {
        $errors[] = __( 'Only administrators may upload attachments' );
    }
    return $errors;
}
?>
