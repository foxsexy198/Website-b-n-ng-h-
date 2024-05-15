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
	'PHPSHOP_USER_FORM_FIRST_NAME' => 'Tên',
	'PHPSHOP_USER_FORM_LAST_NAME' => 'Họ',
	'PHPSHOP_USER_FORM_MIDDLE_NAME' => 'Tên lót',
	'PHPSHOP_USER_FORM_COMPANY_NAME' => 'Công ty',
	'PHPSHOP_USER_FORM_ADDRESS_1' => 'Địa chỉ 1',
	'PHPSHOP_USER_FORM_ADDRESS_2' => 'Địa chỉ 2',
	'PHPSHOP_USER_FORM_CITY' => 'Tỉnh/Thành',
	'PHPSHOP_USER_FORM_STATE' => 'Quận/Huyện',
	'PHPSHOP_USER_FORM_ZIP' => 'Zip/ Mã bưu chính',
	'PHPSHOP_USER_FORM_COUNTRY' => 'Quốc gia',
	'PHPSHOP_USER_FORM_PHONE' => 'Điện thoại',
	'PHPSHOP_USER_FORM_PHONE2' => 'ĐTDĐ',
	'PHPSHOP_USER_FORM_FAX' => 'Fax',
	'PHPSHOP_ISSHIP_LIST_PUBLISH_LBL' => 'Kích hoạt',
	'PHPSHOP_ISSHIP_FORM_UPDATE_LBL' => 'Chọn phương thức vận chuyển',
	'PHPSHOP_STORE_FORM_FULL_IMAGE' => 'Logo',
	'PHPSHOP_STORE_FORM_UPLOAD' => 'Tải ảnh lên',
	'PHPSHOP_STORE_FORM_STORE_NAME' => 'Tên cửa hàng',
	'PHPSHOP_STORE_FORM_COMPANY_NAME' => 'Tên công ty',
	'PHPSHOP_STORE_FORM_ADDRESS_1' => 'Địa chỉ 1',
	'PHPSHOP_STORE_FORM_ADDRESS_2' => 'Địa chỉ 2',
	'PHPSHOP_STORE_FORM_CITY' => 'Tỉnh/Thành',
	'PHPSHOP_STORE_FORM_STATE' => 'Quận/Huyện',
	'PHPSHOP_STORE_FORM_COUNTRY' => 'Quốc gia',
	'PHPSHOP_STORE_FORM_ZIP' => 'Zip/Mã bưu chính',
	'PHPSHOP_STORE_FORM_CURRENCY' => 'Quốc gia',
	'PHPSHOP_STORE_FORM_LAST_NAME' => 'Họ',
	'PHPSHOP_STORE_FORM_FIRST_NAME' => 'Tên',
	'PHPSHOP_STORE_FORM_MIDDLE_NAME' => 'Tên lót',
	'PHPSHOP_STORE_FORM_TITLE' => 'Tiêu đề',
	'PHPSHOP_STORE_FORM_PHONE_1' => 'Điện thoại 1',
	'PHPSHOP_STORE_FORM_PHONE_2' => 'Điện thoại 2',
	'PHPSHOP_STORE_FORM_DESCRIPTION' => 'Giới thiệu',
	'PHPSHOP_PAYMENT_METHOD_LIST_LBL' => 'Danh sách phương thức thanh toán',
	'PHPSHOP_PAYMENT_METHOD_LIST_NAME' => 'Tên',
	'PHPSHOP_PAYMENT_METHOD_LIST_CODE' => 'Mã',
	'PHPSHOP_PAYMENT_METHOD_LIST_SHOPPER_GROUP' => 'Nhóm khách hàng',
	'PHPSHOP_PAYMENT_METHOD_LIST_ENABLE_PROCESSOR' => 'Kiểu phương thức thanh toán',
	'PHPSHOP_PAYMENT_METHOD_FORM_LBL' => 'Mẫu hương thức thanh toán',
	'PHPSHOP_PAYMENT_METHOD_FORM_NAME' => 'Tên Phương thức thanh toán',
	'PHPSHOP_PAYMENT_METHOD_FORM_SHOPPER_GROUP' => 'Nhóm khách hàng',
	'PHPSHOP_PAYMENT_METHOD_FORM_DISCOUNT' => 'Giảm giá',
	'PHPSHOP_PAYMENT_METHOD_FORM_CODE' => 'Mã',
	'PHPSHOP_PAYMENT_METHOD_FORM_LIST_ORDER' => 'Danh sách đơn hàng',
	'PHPSHOP_PAYMENT_METHOD_FORM_ENABLE_PROCESSOR' => 'Kiểu phương thức thanh toán',
	'PHPSHOP_PAYMENT_FORM_CC' => 'Thẻ tín dụng',
	'PHPSHOP_PAYMENT_FORM_USE_PP' => 'Dùng xử lý thanh toán',
	'PHPSHOP_PAYMENT_FORM_BANK_DEBIT' => 'Thẻ ghi nợ',
	'PHPSHOP_PAYMENT_FORM_AO' => 'Thanh toán khi nhận hàng tại địa chỉ',
	'PHPSHOP_STATISTIC_STATISTICS' => 'Thống kê',
	'PHPSHOP_STATISTIC_CUSTOMERS' => 'Khách hàng',
	'PHPSHOP_STATISTIC_ACTIVE_PRODUCTS' => 'Sản phẩm đang bán',
	'PHPSHOP_STATISTIC_INACTIVE_PRODUCTS' => 'Sản phẩm trong kho',
	'PHPSHOP_STATISTIC_NEW_ORDERS' => 'Đơn hàng mới',
	'PHPSHOP_STATISTIC_NEW_CUSTOMERS' => 'Khách hàng mới',
	'PHPSHOP_CREDITCARD_NAME' => 'Tên thẻ tín dụng',
	'PHPSHOP_CREDITCARD_CODE' => 'Thẻ tín dụng - Short Code',
	'PHPSHOP_YOUR_STORE' => 'Cửa hàng của bạn',
	'PHPSHOP_CONTROL_PANEL' => 'Bảng điều khiển',
	'PHPSHOP_CHANGE_PASSKEY_FORM' => 'Hiện/Đổi Mật khẩu/Mã khóa giao dịch',
	'PHPSHOP_TYPE_PASSWORD' => 'Vui lòng nhập mật khẩu của bạn (Mật khẩu của Joomla!)',
	'PHPSHOP_CURRENT_TRANSACTION_KEY' => 'Mã khóa giao dịch hiện tại',
	'PHPSHOP_CHANGE_PASSKEY_SUCCESS' => 'Mã khóa giao dịch đã được đổi.',
	'VM_PAYMENT_CLASS_NAME' => 'Tên class thanh toán',
	'VM_PAYMENT_CLASS_NAME_TIP' => '(Thí dụ <strong>ps_netbanx</strong>) :<br />
		Mặc định: ps_payment<br />
		<em>Chọn ps_payment nếu bạn không biết phải chọn gì!</em>',
	'VM_PAYMENT_EXTRAINFO' => 'Thông tin thêm',
	'VM_PAYMENT_EXTRAINFO_TIP' => 'Được hiển thị trên các trang xác nhận đơn hàng. Có thể là: Biểu mẫu HTML từ nhà cung cấp dịch vụ thanh toán, gợi ý cho khách hàng,...',
	'VM_PAYMENT_ACCEPTED_CREDITCARDS' => 'Chấp nhận các loại thẻ tín dụng',
	'VM_PAYMENT_METHOD_DISCOUNT_TIP' => 'Để chuyển giảm giá thành chi phí, dùng giá trị âm tại đây (Thí dụ: <strong>-2.00</strong>).',
	'VM_PAYMENT_METHOD_DISCOUNT_MAX_AMOUNT' => 'Giảm giá tối đa',
	'VM_PAYMENT_METHOD_DISCOUNT_MIN_AMOUNT' => 'Giảm giá tối thiểu',
	'VM_PAYMENT_FORM_FORMBASED' => 'HTML-Form based (e.g. PayPal)',
	'VM_ORDER_EXPORT_MODULE_LIST_LBL' => 'Danh sách Mô-đun xuất',
	'VM_ORDER_EXPORT_MODULE_LIST_NAME' => 'Tên',
	'VM_ORDER_EXPORT_MODULE_LIST_DESC' => 'Mô tả',
	'VM_STORE_FORM_ACCEPTED_CURRENCIES' => 'Danh sách các loại tiền tệ',
	'VM_STORE_FORM_ACCEPTED_CURRENCIES_TIP' => 'Danh sách này Danh sách này xác định tất cả những tiền tệ được chấp nhận khi khách mua hàng trong cửa hàng của bạn. <strong>Ghi chú:</strong> Tất cả tiền tệ được chọn ở đây có thể dùng để thanh toán! Nếu bạn không muốn, chỉ chọn loại tiền tệ quốc gia của bạn. (=mặc định).',
	'VM_EXPORT_MODULE_FORM_LBL' => 'Mô-đun xuất',
	'VM_EXPORT_MODULE_FORM_NAME' => 'Tên Mô-đun xuất',
	'VM_EXPORT_MODULE_FORM_DESC' => 'Mô tả',
	'VM_EXPORT_CLASS_NAME' => 'Tên Class',
	'VM_EXPORT_CLASS_NAME_TIP' => '(Thí dụ <strong>ps_orders_csv</strong>) :<br /> Mặc định: ps_xmlexport<br /> <i>để trống nếu bạn không chắc là gì!</i>',
	'VM_EXPORT_CONFIG' => 'Thiết lập thêm',
	'VM_EXPORT_CONFIG_TIP' => 'Xác định cấu hình cho người dùng. Phải dùng mã PHP.',
	'VM_SHIPPING_MODULE_LIST_NAME' => 'Tên',
	'VM_SHIPPING_MODULE_LIST_E_VERSION' => 'Phiên bản',
	'VM_SHIPPING_MODULE_LIST_HEADER_AUTHOR' => 'Tác giả',
	'PHPSHOP_STORE_ADDRESS_FORMAT' => 'Định dạng địa chỉ',
	'PHPSHOP_STORE_ADDRESS_FORMAT_TIP' => 'Bạn có thể dùng cú pháp',
	'PHPSHOP_STORE_DATE_FORMAT' => 'Định dạng ngày',
	'VM_PAYMENT_METHOD_ID_NOT_PROVIDED' => 'Lỗi: Mã ID Phương thức thanh toán không được cung cấp.',
	'VM_SHIPPING_MODULE_CONFIG_LBL' => 'Cấu hình Mô-dun vận chuyển',
	'VM_SHIPPING_MODULE_CLASSERROR' => 'Không thể khởi tạo Class {shipping_module}'
); $VM_LANG->initModule( 'store', $langvars );
?>
