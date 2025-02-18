<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );
/**
* The configuration file for VirtueMart
*
* @package VirtueMart
* @subpackage core
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
* VirtueMart is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See /administrator/components/com_virtuemart/COPYRIGHT.php for copyright notices and details.
*
* http://virtuemart.net
*/

global $mosConfig_absolute_path,$mosConfig_live_site;
if( !class_exists( 'jconfig' )) {
	$global_lang = $GLOBALS['mosConfig_lang'];

	@include( dirname( __FILE__ ).'/../../../configuration.php' );

	$GLOBALS['mosConfig_lang'] = $mosConfig_lang = $global_lang;
}
// Check for trailing slash
if( $mosConfig_live_site[strlen( $mosConfig_live_site)-1] == '/' ) {
	$app = '';
}
else {
	$app = '/';
}
// these path and url definitions here are based on the Joomla! Configuration
define( 'URL', 'http://localhost:8080/test1/' );
define( 'SECUREURL', 'http://localhost:8080/test1/' );

if ( (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == '443' ) {
	define( 'IMAGEURL', SECUREURL .'components/com_virtuemart/shop_image/' );
	define( 'VM_THEMEURL', SECUREURL.'components/com_virtuemart/themes/default/' );
} else {
	define( 'IMAGEURL', URL .'components/com_virtuemart/shop_image/' );
	define( 'VM_THEMEURL', URL.'components/com_virtuemart/themes/default/' );
}
define( 'VM_THEMEPATH', $mosConfig_absolute_path.'/components/com_virtuemart/themes/default/' );

define( 'COMPONENTURL', URL .'administrator/components/com_virtuemart/' );
define( 'ADMINPATH', $mosConfig_absolute_path.'/administrator/components/com_virtuemart/' );
define( 'CLASSPATH', ADMINPATH.'classes/' );
define( 'PAGEPATH', ADMINPATH.'html/' );
define( 'IMAGEPATH', $mosConfig_absolute_path.'/components/com_virtuemart/shop_image/' );

define('PSHOP_IS_OFFLINE', '');
define('PSHOP_OFFLINE_MESSAGE', 'Our Shop is currently down for maintenance. Please check back again soon.');
define('USE_AS_CATALOGUE', '');
define('VM_TABLEPREFIX', 'vm');
define('VM_PRICE_SHOW_PACKAGING_PRICELABEL', '1');
define('VM_PRICE_SHOW_INCLUDINGTAX', '');
define('VM_PRICE_ACCESS_LEVEL', 'Public Frontend');
define('VM_REGISTRATION_TYPE', 'NORMAL_REGISTRATION');
define('VM_BROWSE_ORDERBY_FIELD', 'product_name');
define('VM_GENERALLY_PREVENT_HTTPS', '1');
define('VM_ALLOW_EXTENDED_CLASSES', '');
define('VM_SHOW_REMEMBER_ME_BOX', '');
define('VM_REVIEWS_MINIMUM_COMMENT_LENGTH', '100');
define('VM_REVIEWS_MAXIMUM_COMMENT_LENGTH', '2000');
define('VM_SHOW_PRINTICON', '1');
define('VM_SHOW_EMAILFRIEND', '1');
define('PSHOP_PDF_BUTTON_ENABLE', '1');
define('VM_REVIEWS_AUTOPUBLISH', '');
define('VM_PROXY_URL', '');
define('VM_PROXY_PORT', '');
define('VM_PROXY_USER', '');
define('VM_PROXY_PASS', '');
define('VM_ONCHECKOUT_SHOW_LEGALINFO', '');
define('VM_ONCHECKOUT_LEGALINFO_SHORTTEXT', 'Chính sách trả hàng

Bạn có thể hủy đơn hàng trong vòng 2 tuần kể từ khi đặt hàng.
Bạn có thể trả lại sản phẩm còn mới, chưa mở bao bì trong vòng 2 tuần kể từ khi nhận được. Sản phẩm phải được trả lại trong tình trạng như lúc đóng gói.
Để biết thêm thông tin về việc hủy đơn hàng hoặc trả hàng, vui lòng xem Chính sách trả hàng của chúng tôi.');
define('VM_ONCHECKOUT_LEGALINFO_LINK', '');
define('ENABLE_DOWNLOADS', '');
define('DOWNLOAD_MAX', '3');
define('DOWNLOAD_EXPIRE', '432000');
define('ENABLE_DOWNLOAD_STATUS', 'C');
define('DISABLE_DOWNLOAD_STATUS', 'X');
define('DOWNLOADROOT', 'C:\AppServ\www\test1/');
define('VM_DOWNLOADABLE_PRODUCTS_KEEP_STOCKLEVEL', '');
define('_SHOW_PRICES', '1');
define('ORDER_MAIL_HTML', '1');
define('HOMEPAGE', 'shop.index');
define('CATEGORY_TEMPLATE', 'browse_lite_pdf');
define('FLYPAGE', 'flypage.tpl');
define('PRODUCTS_PER_ROW', '2');
define('ERRORPAGE', 'shop.error');
define('NO_IMAGE', 'noimage.gif');
define('DEBUG', '');
define('SHOWVERSION', '1');
define('TAX_VIRTUAL', '');
define('TAX_MODE', '1');
define('MULTIPLE_TAXRATES_ENABLE', '');
define('PAYMENT_DISCOUNT_BEFORE', '');
define('PAYMENT_DISCOUNT_VAT_ID', '');
define('PSHOP_ALLOW_REVIEWS', '1');
define('PSHOP_AGREE_TO_TOS_ONORDER', '');
define('SHOW_CHECKOUT_BAR', '1');
define('CHECK_STOCK', '');
define('ENCODE_KEY', '80becbfa9dec4e5f50e42ce6d7004159');
define('NO_SHIPPING', '');
define('NO_SHIPTO', '');
define('AFFILIATE_ENABLE', '');
define('PSHOP_ALLOW_FRONTENDADMIN_FOR_NOBACKENDERS', '');
define('PSHOP_IMG_RESIZE_ENABLE', '');
define('PSHOP_IMG_WIDTH', '150');
define('PSHOP_IMG_HEIGHT', '150');
define('PSHOP_COUPONS_ENABLE', '1');
define('PSHOP_SHOW_PRODUCTS_IN_CATEGORY', '');
define('PSHOP_SHOW_TOP_PAGENAV', '1');
define('PSHOP_SHOW_OUT_OF_STOCK_PRODUCTS', '1');
define('VM_CURRENCY_CONVERTER_MODULE', 'convertECB');
define('VM_CONTENT_PLUGINS_ENABLE', '1');
define('VM_ENABLE_COOKIE_CHECK', '1');
define('VM_FEED_ENABLED', '1');
define('VM_FEED_CACHE', '1');
define('VM_FEED_CACHETIME', '3600');
define('VM_FEED_TITLE', 'Latest Products from {storename}');
define('VM_FEED_TITLE_CATEGORIES', '{storename} - Latest Products from Category: {catname}');
define('VM_FEED_SHOW_IMAGES', '1');
define('VM_FEED_SHOW_PRICES', '1');
define('VM_FEED_SHOW_DESCRIPTION', '1');
define('VM_FEED_DESCRIPTION_TYPE', 'product_s_desc');
define('VM_FEED_LIMITTEXT', '1');
define('VM_FEED_MAX_TEXT_LENGTH', '250');
define('VM_STORE_CREDITCARD_DATA', '1');
define('VM_ENCRYPT_FUNCTION', 'AES_ENCRYPT');
define('VM_COMPONENT_NAME', 'com_virtuemart');
define('VM_LOGFILE_ENABLED', '');
define('VM_LOGFILE_NAME', '');
define('VM_LOGFILE_LEVEL', 'PEAR_LOG_WARNING');
define('VM_DEBUG_IP_ENABLED', '');
define('VM_DEBUG_IP_ADDRESS', '');
define('VM_LOGFILE_FORMAT', '%{timestamp} %{ident} [%{priority}] [%{remoteip}] [%{username}] %{message}');

/* OrderByFields */
global $VM_BROWSE_ORDERBY_FIELDS;
$VM_BROWSE_ORDERBY_FIELDS = array( 'product_name','product_price','product_cdate' );

/* Shop Modules that run with https only*/
global $VM_MODULES_FORCE_HTTPS;
$VM_MODULES_FORCE_HTTPS = array( 'account','checkout' );

// Checkout Steps and their order
global $VM_CHECKOUT_MODULES;
$VM_CHECKOUT_MODULES = array( 'CHECK_OUT_GET_SHIPPING_ADDR'=>array('order'=>1,'enabled'=>1),
'CHECK_OUT_GET_SHIPPING_METHOD'=>array('order'=>2,'enabled'=>1),
'CHECK_OUT_GET_PAYMENT_METHOD'=>array('order'=>3,'enabled'=>1),
'CHECK_OUT_GET_FINAL_CONFIRMATION'=>array('order'=>4,'enabled'=>1) );

/* Shipping Methods Definition */
global $PSHOP_SHIPPING_MODULES;
$PSHOP_SHIPPING_MODULES[0] = "flex";
$PSHOP_SHIPPING_MODULES[1] = "standard_shipping";
?>