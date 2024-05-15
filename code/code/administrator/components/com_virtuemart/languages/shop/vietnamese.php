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
	'PHPSHOP_BROWSE_LBL' => 'Các sản phẩm',
	'PHPSHOP_FLYPAGE_LBL' => 'Thông tin chi tiết',
	'PHPSHOP_PRODUCT_FORM_EDIT_PRODUCT' => 'Sửa sản phẩm này',
	'PHPSHOP_DOWNLOADS_START' => 'Bắt đầu tải xuống',
	'PHPSHOP_DOWNLOADS_INFO' => 'Vui lòng nhập mã tải tập tin (Download-ID) bạn đã nhận được trong Email và nhấn vào nút \'Bắt đầu tải xuống\'.',
	'PHPSHOP_WAITING_LIST_MESSAGE' => 'Vui lòng nhập địa chỉ Email của bạn vào đây để được thông báo khi có hàng. 
		Chúng tôi không chia sẻ, cho thuê, bán hoặc sử dụng địa chỉ Email này cho bất kỳ mục đích nào khác ngoài việc thôn báo cho bạn biết khi có hàng.<br /><br />Cảm ơn bạn!',
	'PHPSHOP_WAITING_LIST_THANKS' => 'Cảm ơn bạn đã chờ! <br />Chúng tôi sẽ thông báo cho bạn biết ngay khi có hàng.',
	'PHPSHOP_WAITING_LIST_NOTIFY_ME' => 'Thông báo cho tôi!',
	'PHPSHOP_SEARCH_ALL_CATEGORIES' => 'Tất cả các Danh mục sản phẩm',
	'PHPSHOP_SEARCH_ALL_PRODINFO' => 'Tất cả các thông tin của sản phẩm',
	'PHPSHOP_SEARCH_PRODNAME' => 'Tên sản phẩm',
	'PHPSHOP_SEARCH_MANU_VENDOR' => 'Nhà sản xuất/Nhà cung cấp',
	'PHPSHOP_SEARCH_DESCRIPTION' => 'Giới thiệu/Chi tiết sản phẩm',
	'PHPSHOP_SEARCH_AND' => 'Và',
	'PHPSHOP_SEARCH_NOT' => 'Không',
	'PHPSHOP_SEARCH_TEXT1' => '- Lựa chọn thứ nhất cho phép chọn Danh mục sản phẩm để giới hạn tìm kiếm.<BR> 
        - Lựa chọn thứ hai cho phép giới hạn tìm kiếm trong thông tin của sản phẩm. <BR>
        - Bạn có thể chọn hoặc để mặc định là chọn tất cả. ',
	'PHPSHOP_SEARCH_TEXT2' => ' Bạn có thể tinh chỉnh tìm kiếm bằng cách nhập thêm vào một từ khóa thứ hai và lựa chọn một trong hai phép tính VÀ hoặc KHÔNG.<BR> 
        - Nếu chọn VÀ có nghĩa là sản phẩm sẽ được hiển thị nếu có từ khóa đầu tiên và từ khóa thứ hai.<BR>
		- Nếu chọn KHÔNG có nghĩa là sản phẩm sẽ được hiển thị nếu có từ khóa đầu tiên và không có từ khóa thứ hai.',
	'PHPSHOP_CONTINUE_SHOPPING' => 'Tiếp tục chọn hàng',
	'PHPSHOP_AVAILABLE_IMAGES' => 'Ảnh trạng thái hàng hóa',
	'PHPSHOP_BACK_TO_DETAILS' => 'Quay lại chi tiết sản phẩm',
	'PHPSHOP_IMAGE_NOT_FOUND' => 'Không tìm thấy ảnh!',
	'PHPSHOP_PARAMETER_SEARCH_TEXT1' => 'Bạn có muốn tìm sản phẩm theo các thông số kỹ thuật?<BR>Hãy sử dụng các thông số dưới đây:',
	'PHPSHOP_PARAMETER_SEARCH_NO_PRODUCT_TYPE' => 'Rất tiếc, không có thông số nào để tìm.',
	'PHPSHOP_PARAMETER_SEARCH_BAD_PRODUCT_TYPE' => 'Rất tiếc, không có loại sản phẩm nào với tên này.',
	'PHPSHOP_PARAMETER_SEARCH_IS_LIKE' => 'Giống như',
	'PHPSHOP_PARAMETER_SEARCH_IS_NOT_LIKE' => 'Không giống như',
	'PHPSHOP_PARAMETER_SEARCH_FULLTEXT' => 'Tìm toàn bộ từ',
	'PHPSHOP_PARAMETER_SEARCH_FIND_IN_SET_ALL' => 'Tất cả lựa chọn',
	'PHPSHOP_PARAMETER_SEARCH_FIND_IN_SET_ANY' => 'Bất cứ lựa chọn nào',
	'PHPSHOP_PARAMETER_SEARCH_RESET_FORM' => 'Làm lại',
	'PHPSHOP_PRODUCT_NOT_FOUND' => 'Rất tiếc, không có sản phẩm bạn cần tìm.!',
	'PHPSHOP_PRODUCT_PACKAGING1' => 'Số {unit} trong kiện:',
	'PHPSHOP_PRODUCT_PACKAGING2' => 'Số {unit}trong hộp:',
	'PHPSHOP_CART_PRICE_PER_UNIT' => 'Giá mỗi cái',
	'VM_PRODUCT_ENQUIRY_LBL' => 'Thắc mắc về sản phẩm này',
	'VM_RECOMMEND_FORM_LBL' => 'Giới thiệu sản phẩm này cho người khác',
	'PHPSHOP_EMPTY_YOUR_CART' => 'Làm sạch giỏ hàng',
	'VM_RETURN_TO_PRODUCT' => 'Quay lại',
	'EMPTY_CATEGORY' => 'Danh mục này hiện chưa có hàng.',
	'ENQUIRY' => 'Yêu cầu',
	'NAME_PROMPT' => 'Tên của bạn',
	'EMAIL_PROMPT' => 'Địa chỉ Email',
	'MESSAGE_PROMPT' => 'Nội dung thắc mắc của bạn',
	'SEND_BUTTON' => 'Gửi',
	'THANK_MESSAGE' => 'Cảm ơn bạn đã quan tâm đến sản phẩm này. Chúng tôi sẽ liên lạc với bạn ngay khi có thể.',
	'PROMPT_CLOSE' => 'Đóng',
	'VM_RECOVER_CART_REPLACE' => 'Lấy giỏ hàng đã lưu',
	'VM_RECOVER_CART_MERGE' => 'Thêm giỏ hàng đã lưu vào',
	'VM_RECOVER_CART_DELETE' => 'Xóa giỏ hàng đã lưu',
	'VM_EMPTY_YOUR_CART_TIP' => 'Xóa tất cả giỏ hàng',
	'VM_SAVED_CART_TITLE' => 'Đã lưu giỏ hàng',
	'VM_SAVED_CART_RETURN' => 'Quay lại'
); $VM_LANG->initModule( 'shop', $langvars );
?>