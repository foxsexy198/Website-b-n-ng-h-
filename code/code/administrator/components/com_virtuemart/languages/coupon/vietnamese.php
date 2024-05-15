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
	'PHPSHOP_COUPON_EDIT_HEADER' => 'Cập nhật mã giảm giá',
	'PHPSHOP_COUPON_CODE_HEADER' => 'Mã',
	'PHPSHOP_COUPON_PERCENT_TOTAL' => 'Phần trăn hay tổng cộng',
	'PHPSHOP_COUPON_TYPE' => 'Loại mã',
	'PHPSHOP_COUPON_TYPE_TOOLTIP' => 'Mã giảm giá sẽ bị xóa sau khi sử dụng. Mã cố định có thể được sử dụng thường xuyên nếu muốn.',
	'PHPSHOP_COUPON_TYPE_GIFT' => 'Mã quà tặng',
	'PHPSHOP_COUPON_TYPE_PERMANENT' => 'Mã cố định',
	'PHPSHOP_COUPON_VALUE_HEADER' => 'Giá trị',
	'PHPSHOP_COUPON_PERCENT' => 'Phần trăm',
	'PHPSHOP_COUPON_TOTAL' => 'Tổng cộng'
); $VM_LANG->initModule( 'coupon', $langvars );
?>