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
	'PHPSHOP_TAX_LIST_LBL' => 'Danh sách biểu thuế',
	'PHPSHOP_TAX_LIST_STATE' => 'Thuế vùng',
	'PHPSHOP_TAX_LIST_COUNTRY' => 'Thuế quốc gia',
	'PHPSHOP_TAX_FORM_LBL' => 'Thêm thông tin thuế',
	'PHPSHOP_TAX_FORM_STATE' => 'Thuế vùng',
	'PHPSHOP_TAX_FORM_COUNTRY' => 'Thuế quốc gia',
	'PHPSHOP_TAX_FORM_RATE' => 'Thuế suất (nếu muốn 16% => nhập vào 0.16)'
); $VM_LANG->initModule( 'tax', $langvars );
?>