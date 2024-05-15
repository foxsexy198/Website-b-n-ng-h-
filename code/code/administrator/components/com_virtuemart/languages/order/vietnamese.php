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
	'PHPSHOP_ORDER_PRINT_PAYMENT_LOG_LBL' => 'Báo cáo thanh toán',
	'PHPSHOP_ORDER_PRINT_SHIPPING_PRICE_LBL' => 'Phí vận chuyển',
	'PHPSHOP_ORDER_STATUS_LIST_CODE' => 'Mã trạng thái đơn hàng',
	'PHPSHOP_ORDER_STATUS_LIST_NAME' => 'Tên trạng thái đơn hàng',
	'PHPSHOP_ORDER_STATUS_FORM_LBL' => 'Trạng thái đơn hàng',
	'PHPSHOP_ORDER_STATUS_FORM_CODE' => 'Mã trang thái đơn hàng',
	'PHPSHOP_ORDER_STATUS_FORM_NAME' => 'Tên trạng thái đơn hàng',
	'PHPSHOP_ORDER_STATUS_FORM_LIST_ORDER' => 'Thứ tự trạng thái',
	'PHPSHOP_COMMENT' => 'Ghi chú',
	'PHPSHOP_ORDER_LIST_NOTIFY' => 'Thông báo cho khách hàng?',
	'PHPSHOP_ORDER_LIST_NOTIFY_ERR' => 'Vui lòng đổi trạng thái đơn hàng trước!',
	'PHPSHOP_ORDER_HISTORY_INCLUDE_COMMENT' => 'Kèm theo ghi chú?',
	'PHPSHOP_ORDER_HISTORY_DATE_ADDED' => 'Thêm ngày tháng?',
	'PHPSHOP_ORDER_HISTORY_CUSTOMER_NOTIFIED' => 'Thông báo cho khách hàng?',
	'PHPSHOP_ORDER_STATUS_CHANGE' => 'Đổi trạng thái đơn hàng',
	'PHPSHOP_ORDER_LIST_PRINT_LABEL' => 'In nhãn',
	'PHPSHOP_ORDER_LIST_VOID_LABEL' => 'Vô hiệu nhãn',
	'PHPSHOP_ORDER_LIST_TRACK' => 'Theo dõi',
	'VM_DOWNLOAD_STATS' => 'BẮT ĐẦU TẢI XUỐNG',
	'VM_DOWNLOAD_NOTHING_LEFT' => 'Không còn lượt tải xuống',
	'VM_DOWNLOAD_REENABLE' => 'Kích hoạt lại tải xuống',
	'VM_DOWNLOAD_REMAINING_DOWNLOADS' => 'Còn lượt tải xuống',
	'VM_DOWNLOAD_RESEND_ID' => 'Gủi lại mã ID tải xuống',
	'VM_EXPIRY' => 'Thời hạn',
	'VM_UPDATE_STATUS' => 'Trạng thái cập nhật',
	'VM_ORDER_LABEL_ORDERID_NOTVALID' => 'Vui lòng cung cấp đúng số, mã ID đơn hàng không phải "{order_id}"',
	'VM_ORDER_LABEL_NOTFOUND' => 'Không tìm thấy bảng ghi đơn hàng trong cơ sở dữ liệu vận chuyển.',
	'VM_ORDER_LABEL_NEVERGENERATED' => 'Nhãn đã được tạo ra',
	'VM_ORDER_LABEL_CLASSCANNOT' => 'Class {ship_class} cannot get label images, why are we here?',
	'VM_ORDER_LABEL_SHIPPINGLABEL_LBL' => 'Nhãn vận chuyển',
	'VM_ORDER_LABEL_SIGNATURENEVER' => 'Chữ ký không bao giờ được lấy ra',
	'VM_ORDER_LABEL_TRACK_TITLE' => 'Theo dõi',
	'VM_ORDER_LABEL_VOID_TITLE' => 'Vô hiệu nhãn',
	'VM_ORDER_LABEL_VOIDED_MSG' => 'Nhãn cho giấy gửi hàng {tracking_number} đã được hủy bỏ.',
	'VM_ORDER_PRINT_PO_IPADDRESS' => 'Địa chỉ IP',
	'VM_ORDER_STATUS_ICON_ALT' => 'Biểu tượng trạng thái',
	'VM_ORDER_PAYMENT_CCV_CODE' => 'Mã CVV',
	'VM_ORDER_NOTFOUND' => 'Không thấy đơn hàng! Có thể nó đã bị xóa.',
	'PHPSHOP_ORDER_EDIT_ACTIONS' => 'Thực hiện',
	'PHPSHOP_ORDER_EDIT' => 'Đổi chi tiết đơn hàng',
	'PHPSHOP_ORDER_EDIT_ADD' => 'Thêm',
	'PHPSHOP_ORDER_EDIT_ADD_PRODUCT' => 'Thêm sản phẩm',
	'PHPSHOP_ORDER_EDIT_EDIT_ORDER' => 'Đơn đơn hàng',
	'PHPSHOP_ORDER_EDIT_ERROR_QUANTITY_MUST_BE_HIGHER_THAN_0' => 'Số lượng phải lớn hơn 0.',
	'PHPSHOP_ORDER_EDIT_PRODUCT_ADDED' => 'Sản phẩm đã được thêm vào đơn hàng',
	'PHPSHOP_ORDER_EDIT_PRODUCT_DELETED' => 'Sản phẩm đã được bỏ khỏi đơn hàng',
	'PHPSHOP_ORDER_EDIT_QUANTITY_UPDATED' => 'Số lượng đã được cập nhật',
	'PHPSHOP_ORDER_EDIT_RETURN_PARENTS' => 'Quay lại danh mục chính',
	'PHPSHOP_ORDER_EDIT_CHOOSE_PRODUCT' => 'Chọn một sản phẩm',
	'PHPSHOP_ORDER_CHANGE_UPD_BILL' => 'Đổi địa chỉ thanh toán',
	'PHPSHOP_ORDER_CHANGE_UPD_SHIP' => 'Đổi địa chỉ vận chuyển',
	'PHPSHOP_ORDER_EDIT_SOMETHING_HAS_CHANGED' => ' đã được đổi',
	'PHPSHOP_ORDER_EDIT_CHOOSE_PRODUCT_BY_SKU' => 'Chọn mã SKU'
); $VM_LANG->initModule( 'order', $langvars );
?>
