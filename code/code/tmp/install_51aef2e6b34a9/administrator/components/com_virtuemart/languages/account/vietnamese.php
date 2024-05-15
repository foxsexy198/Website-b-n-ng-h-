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
	'PHPSHOP_ACC_CUSTOMER_ACCOUNT' => 'Tài khoản khách hàng:',
	'PHPSHOP_ACC_UPD_BILL' => 'Tại đây bạn có thể cập nhật thông tin thanh toán của mình.',
	'PHPSHOP_ACC_UPD_SHIP' => 'Tại đây bạn có thể cập nhật thông tin giao nhận của mình.',
	'PHPSHOP_ACC_ACCOUNT_INFO' => 'Thông tin tài khoản',
	'PHPSHOP_ACC_SHIP_INFO' => 'Thông tin giao nhận',
	'PHPSHOP_DOWNLOADS_CLICK' => 'Nhấn vào tên của sản phẩm để tải tập tin.',
	'PHPSHOP_DOWNLOADS_EXPIRED' => 'Bạn đã tải tập tin vượt quá số lần cho phép hoặc đã hết thời hạn tải tập tin.'
); $VM_LANG->initModule( 'account', $langvars );
?>