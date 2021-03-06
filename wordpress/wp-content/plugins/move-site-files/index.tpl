<?php
/**
 * Front to the WordPress application. This file doesn't do anything, but loads
 * wp-blog-header.php which does and tells WordPress to load the theme.
 *
 * @package WordPress
 */

/**
 * Tells WordPress to load the WordPress theme and output it.
 *
 * @var bool
 */
define('WP_USE_THEMES', true);
if (strcmp("/wordpress/index.php",$_SERVER['REQUEST_URI']) && strcmp("/wordpress/",$_SERVER['REQUEST_URI'])){ 
	require('/var/services/web/wordpress/wp-blog-header.php');
} else {
	header('location: wp-login.php');
}
?>

