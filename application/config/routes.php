<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/


$route['default_controller'] = "welcome";
$route['404_override'] = '';

$route['^(en|es)/login'] = 'sessions';
$route['^(en|es)/logout'] = 'sessions/destroy';
$route['^(en|es)/register'] = 'sessions/register';
$route['^(en|es)/u/(:any)'] = 'sessions/profile/$2';

// ------------ > Common to all nodes
$route['^(en|es)/node/(:num)/delete'] = 'nodes/delete/$2';
$route['node/(:num)'] = 'nodes/show/$1';
$route['^(en|es)/node/(:num)'] = "nodes/show/$2";

$route['^(en|es)/directory'] = 'businesses';

/* End of file routes.php */
/* Location: ./application/config/routes.php */

// URI like '/en/about' -> use controller 'about'
$route['^(en|es)/(.+)$'] = "$2";

// '/en', '/de', '/fr' and '/nl' URIs -> use default controller
$route['^(en|es)$'] = $route['default_controller'];