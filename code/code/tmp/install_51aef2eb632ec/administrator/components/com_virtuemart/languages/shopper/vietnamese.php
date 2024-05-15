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
	'PHPSHOP_ADMIN_CFG_PRICES_INCLUDE_TAX' => 'Hiển thị giá sau thuế?',
	'PHPSHOP_ADMIN_CFG_PRICES_INCLUDE_TAX_EXPLAIN' => 'Thiết lập cho phép hiển thị giá trước thuế hoặc sau thuế.',
	'PHPSHOP_SHOPPER_FORM_ADDRESS_LABEL' => 'Địa chỉ',
	'PHPSHOP_SHOPPER_GROUP_LIST_LBL' => 'Nhóm khách hàng',
	'PHPSHOP_SHOPPER_GROUP_LIST_NAME' => 'Tên nhóm',
	'PHPSHOP_SHOPPER_GROUP_LIST_DESCRIPTION' => 'Thông tin nhóm',
	'PHPSHOP_SHOPPER_GROUP_FORM_LBL' => 'Nhóm khách hàng',
	'PHPSHOP_SHOPPER_GROUP_FORM_NAME' => 'Tên nhóm',
	'PHPSHOP_SHOPPER_GROUP_FORM_DESC' => 'Thông tin nhóm',
	'PHPSHOP_SHOPPER_GROUP_FORM_DISCOUNT' => 'Giảm giá cho nhóm khách hàng mặc định (sử dụng %)',
	'PHPSHOP_SHOPPER_GROUP_FORM_DISCOUNT_TIP' => 'Một giá trị X có nghĩa là: Nếu sản phẩm không có giá áp dụng cho nhóm này thì giá mặc định sẽ được giảm X%. Một giá trị âm sẽ có tác dụng ngược lại'
); $VM_LANG->initModule( 'shopper', $langvars );
?>