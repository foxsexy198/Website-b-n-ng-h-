<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 
/**
*
* @version $Id: vietnamese.php 1071 2011-06-20 08:42:28Z http://www.buaxua.vn $
* @package VirtueMart
* @subpackage languages
* @copyright Copyright (C) 2004-2007 soeren - All rights reserved.
* @translator soeren
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
* VirtueMart is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See /administrator/components/com_virtuemart/COPYRIGHT.php for copyright notices and details.
*
* http://virtuemart.net
*/
global $VM_LANG;
$langvars = array (
	'CHARSET' => 'UTF-8',
	'VM_HELP_YOURVERSION' => '{product} của bạn có phiên bản',
	'VM_HELP_ABOUT' => '<span style="font-weight: bold;">
		VirtueMart</span> là thành phần mở rộng có chức năng bán hàng trực tuyến cho Mambo và Joomla!. 
		Nó là một thành phần mở rộng với một Component, hơn 8 Mô-đun và Mambots/Plugins.
		Gốc của nó là một mã giỏ hàng gọi là "phpShop" (Tác giả: Edikon Corp. & the <a href="http://www.virtuemart.org/" target="_blank">phpShop</a> community).',
	'VM_HELP_LICENSE_DESC' => 'VirtueMart được cấp phép theo <a href="{licenseurl}" target="_blank">{licensename} License</a>.',
	'VM_HELP_TEAM' => 'Có một nhóm nhỏ các nhà phát triển giúp đỡ trong việc phát triển mã giỏ hàng này.',
	'VM_HELP_PROJECTLEADER' => 'Trưởng dự án',
	'VM_HELP_HOMEPAGE' => 'Trang chủ',
	'VM_HELP_DONATION_DESC' => 'Hãy xem xét một đóng góp nhỏ cho Dự án VirtueMart để giúp chúng tôi tiếp tục làm việc và tạo ra một tính năng mới.',
	'VM_HELP_DONATION_BUTTON_ALT' => 'Thực hiện thanh toán với PayPal - nhanh chóng, miễn phí và an toàn!'
); $VM_LANG->initModule( 'help', $langvars );
?>