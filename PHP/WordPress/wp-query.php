
<?php

/* Building An Advanced WordPress Search With WP_Query */
// https://www.smashingmagazine.com/2016/03/advanced-wordpress-search-with-wp_query/

/* Search WordPress by Custom Fields without a Plugin */
// https://adambalee.com/search-wordpress-by-custom-fields-without-a-plugin/

/* Get SQL query from WP_Query */
$query_args = array(
// Imagine a big list of complex arguments here
);

$results = new WP_Query($query_args);
// Show the query
echo $results->request;
?>
