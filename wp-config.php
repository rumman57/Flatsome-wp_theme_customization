<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wptest');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '!c._!;S%<usU;y+F/lJl)4AhP:#ftOWau.* nP$w=k,ySn)Y)>gr@[aMR[txZOG^');
define('SECURE_AUTH_KEY',  ')8K;DreB9Bg<J*&V;>vq7ayU%UMq=y#pH8r,WNi_#1W&VWzu30$~2ziF1R7 k)Is');
define('LOGGED_IN_KEY',    'p&f8a(Q|BBzru%P:`b_8y6qtqGeq6Bs~iZUa:@=Tr6WE??U*Pw!x.]{%&_Ay.SZH');
define('NONCE_KEY',        'Yb@sDu#FTTk4u_8}h%CAv,~Xw0wZ,0y*hH7j*uIQ6Ghmxo{b9`NFW [lptv{F@4Z');
define('AUTH_SALT',        ',/AB&*zOB?kkqmSr^xGH:xQ=cQC1!p8o6ZV>kDMJ*[l+KqLx;b-;aTgLU1FA~((m');
define('SECURE_AUTH_SALT', '4:BFcZDdf[nE%>~b0h9 .;13@1,/N/v)^L1}IA(HIEEulx^ko]W%0hrx1x* ?*rw');
define('LOGGED_IN_SALT',   'q%50$C1jeI`e)>{mtcy0,dhyrOG[fV2uuEY!D8kH.w^N%h)r7SWpF9g/1wCeubAL');
define('NONCE_SALT',       'nUjJ#IFai<`,R0NzChCmf#{eH@K8/C~-GL 8=0PB5A|Y~~?{e. 6R.W#C)FD {m1');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'woo1';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
