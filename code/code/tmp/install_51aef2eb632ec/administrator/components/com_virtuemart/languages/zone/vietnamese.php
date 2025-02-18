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
	'PHPSHOP_ZONE_ASSIGN_COUNTRY_LBL' => 'Quốc gia',
	'PHPSHOP_ZONE_ASSIGN_ASSIGN_LBL' => 'Áp dụng cho vùng',
	'PHPSHOP_ASSIGN_ZONE_PG_LBL' => 'Vùng áp dụng',
	'PHPSHOP_ZONE_FORM_NAME_LBL' => 'Tên vùng',
	'PHPSHOP_ZONE_FORM_DESC_LBL' => 'Mô tả vùng',
	'PHPSHOP_ZONE_FORM_COST_PER_LBL' => 'Chi phí mỗi khoản',
	'PHPSHOP_ZONE_FORM_COST_LIMIT_LBL' => 'Giới hạn chi phí',
	'PHPSHOP_ZONE_LIST_LBL' => 'Danh sách vùng',
	'PHPSHOP_ZONE_LIST_NAME_LBL' => 'Tên vùng',
	'PHPSHOP_ZONE_LIST_DESC_LBL' => 'Mô tả vùng',
	'PHPSHOP_ZONE_LIST_COST_PER_LBL' => 'Chi phí mỗi khoản',
	'PHPSHOP_ZONE_LIST_COST_LIMIT_LBL' => 'Giới hạn chi phí',
	'VM_ZONE_ASSIGN_PERITEM' => 'Mỗi khoản',
	'VM_ZONE_ASSIGN_LIMIT' => 'Giới hạn',
	'VM_ZONE_EDITZONE' => 'Sửa vùng này'
); $VM_LANG->initModule( 'zone', $langvars );
?>