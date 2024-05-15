<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 
/**
*
* @version $Id: vietnamese.php 1071 2011-06-20 08:42:28Z http://www.buaxua.vn $
* @package VirtueMart
* @subpackage languages
* @copyright Copyright (C) 2004-2008 soeren - All rights reserved.
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
	'PHPSHOP_NO_CUSTOMER' => 'Bạn chưa đăng ký thông tin khách hàng. Vui lòng cập nhật các thông tin dưới đây.',
	'PHPSHOP_THANKYOU' => 'Cảm ơn bạn đã đặt hàng.',
	'PHPSHOP_EMAIL_SENDTO' => 'Một Email xác nhận đã được gửi đến',
	'PHPSHOP_CHECKOUT_NEXT' => 'Tới',
	'PHPSHOP_CHECKOUT_CONF_BILLINFO' => 'Thông tin thanh toán',
	'PHPSHOP_CHECKOUT_CONF_COMPANY' => 'Công ty',
	'PHPSHOP_CHECKOUT_CONF_NAME' => 'Tên',
	'PHPSHOP_CHECKOUT_CONF_ADDRESS' => 'Địa chỉ',
	'PHPSHOP_CHECKOUT_CONF_EMAIL' => 'Email',
	'PHPSHOP_CHECKOUT_CONF_SHIPINFO' => 'Thông tin giao nhận',
	'PHPSHOP_CHECKOUT_CONF_SHIPINFO_COMPANY' => 'CCông ty',
	'PHPSHOP_CHECKOUT_CONF_SHIPINFO_NAME' => 'Tên',
	'PHPSHOP_CHECKOUT_CONF_SHIPINFO_ADDRESS' => 'Địa chỉ',
	'PHPSHOP_CHECKOUT_CONF_SHIPINFO_PHONE' => 'Điện thoại',
	'PHPSHOP_CHECKOUT_CONF_SHIPINFO_FAX' => 'Fax',
	'PHPSHOP_CHECKOUT_CONF_PAYINFO_METHOD' => 'Phương thức thanh toán',
	'PHPSHOP_CHECKOUT_CONF_PAYINFO_REQINFO' => 'Thông tin bắt buộc khi chọn thanh toán bằng thẻ tín dụng',
	'PHPSHOP_PAYPAL_THANKYOU' => 'Cảm ơn bạn đã thanh toán. 
        Các giao dịch đã thành công. Bạn sẽ nhận được một Email xác nhận giao dịch bằng PayPal. 
        Bạn có thể tiếp tục hoặc đăng nhập vào <a href=http://www.paypal.com>www.paypal.com</a> để xem chi tiết giao dịch.',
	'PHPSHOP_PAYPAL_ERROR' => 'Có một lỗi xảy ra khi xử lý giao dịch của bạn. Trạng thái đơn hàng của bạn không được cập nhật.',
	'PHPSHOP_THANKYOU_SUCCESS' => 'Đơn hàng của bạn đã được đặt thành công!',
	'VM_CHECKOUT_TITLE_TAG' => 'Thanh toán: bước %s / %s',
	'VM_CHECKOUT_ORDERIDNOTSET' => 'Mã đơn hàng chưa được thiết lập hoặc trống!',
	'VM_CHECKOUT_FAILURE' => 'Lỗi',
	'VM_CHECKOUT_SUCCESS' => 'Thành công',
	'VM_CHECKOUT_PAGE_GATEWAY_EXPLAIN_1' => 'Trang này được đặt trên trang web của cửa hàng.',
	'VM_CHECKOUT_PAGE_GATEWAY_EXPLAIN_2' => 'Cổng xử lý trang web và cho ra kết quả mã hóa SSL.',
	'VM_CHECKOUT_CCV_CODE' => 'Mã xác thực (Validation Code) của thẻ tín dụng',
	'VM_CHECKOUT_CCV_CODE_TIPTITLE' => 'Mã xác thực (Validation Code) của thẻ tín dụng là gì?',
	'VM_CHECKOUT_MD5_FAILED' => 'Lỗi kiểm tra mã hóa',
	'VM_CHECKOUT_ORDERNOTFOUND' => 'Không tìm thấy đơn hàng',
	'PHPSHOP_EPAY_PAYMENT_CARDTYPE' => 'Thanh toán được tạo bởi %s <img
src="/components/com_virtuemart/shop_image/ps_image/epay_images/%s"
border="0">'
); $VM_LANG->initModule( 'checkout', $langvars );
?>