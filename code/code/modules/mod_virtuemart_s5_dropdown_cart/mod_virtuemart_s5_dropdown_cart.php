<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );
/**
@version 1.0: S5 Drop Down Cart
Author: Shape 5 - Professional Template Community
Available for download at www.shape5.com
Copyright 2008 Shape 5 LLC
*/
// no direct access


$introtext	= $params->get( 'introtext', '' );
$_SESSION['introtext'] = $introtext;
$width	= $params->get( 'width', '' );
$_SESSION['width'] = $width;
$height	= $params->get( 'height', '' );
$_SESSION['height'] = $height;
$openclose	= $params->get( 'openclose', '' );
$_SESSION['openclose'] = $openclose;
$backcolor	= $params->get( 'backcolor', '' );
$_SESSION['backcolor'] = $backcolor;
$button1text	= $params->get( 'button1text', '' );
$_SESSION['button1text'] = $button1text;
$button2text	= $params->get( 'button2text', '' );
$_SESSION['button2text'] = $button2text;
$button2textclicked	= $params->get( 'button2textclicked', '' );
$_SESSION['button2textclicked'] = $button2textclicked;
$fontcolor	= $params->get( 'fontcolor', '' );
$_SESSION['fontcolor'] = $fontcolor;
$backfontcolor	= $params->get( 'backfontcolor', '' );
$_SESSION['backfontcolor'] = $backfontcolor;
$individual_pricee = $params->get( 'individual_price', '' );
$_SESSION['individual_pricee'] = $individual_pricee;
$order_totall = $params->get( 'order_total', '' );
$_SESSION['order_totall'] = $order_totall;
$items = $params->get( 'items', '' );
$_SESSION['items'] = $items;
$scroll = $params->get( 'scroll', '' );
$bordercolor = $params->get( 'bordercolor', '' );
$_SESSION['bordercolor'] = $bordercolor;
$fontsize = $params->get( 'fontsize', '' );
$_SESSION['fontsize'] = $fontsize;

$lmargin = $params->get( 'lmargin', '' );
$rmargin = $params->get( 'rmargin', '' );
$tmargin = $params->get( 'tmargin', '' );
$bmargin = $params->get( 'bmargin', '' );


$total = 0;


if ($openclose == "yes") {
$_SESSION['openclose_display'] = "block";
}
else {
$_SESSION['openclose_display'] = "none";
}


/* Load the virtuemart main parse code */
$introtext= $params->get( 'introtext' );

$LiveSite = JURI::base();

if( file_exists(dirname(__FILE__).'/../../components/com_virtuemart/virtuemart_parser.php' )) {
	require_once( dirname(__FILE__).'/../../components/com_virtuemart/virtuemart_parser.php' );
} else {
	require_once( dirname(__FILE__).'/../components/com_virtuemart/virtuemart_parser.php' );
}

$cart = $_SESSION['cart'];
$auth = $_SESSION['auth'];
?>

<?php
global $VM_LANG, $sess, $mm_action_url;

$_SESSION['vmUseGreyBox'] = $params->get( 'vmEnableGreyBox');
$_SESSION['vmCartDirection'] = $params->get( 'vmCartDirection');

mm_showMyFileName( __FILE__ );

require_once(CLASSPATH. 'ps_product.php' );
$ps_product =& new ps_product;
require_once(CLASSPATH. 'ps_shipping_method.php' );
require_once(CLASSPATH. 'ps_checkout.php' );
$ps_checkout =& new ps_checkout;

global $CURRENCY_DISPLAY, $VM_LANG, $vars,$mosConfig_live_site, $sess, $mm_action_url;

$catid = vmGet($_REQUEST, "category_id", null);
$prodid = vmGet($_REQUEST, "product_id", null);
$page = vmGet($_REQUEST, "page", null);
$flypage = vmGet($_REQUEST, "flypage", null);
$Itemid = vmGet($_REQUEST, "Itemid", null);
$option = vmGet($_REQUEST, "option", null);
$page =vmGet( $_REQUEST, 'page', null );
$tpl = new $GLOBALS['VM_THEMECLASS']();
$cart = $_SESSION['cart'];
$saved_cart = @$_SESSION['savedcart'];
$auth = $_SESSION['auth'];
$empty_cart = false;
$minicart = array();



$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
if(ereg("msie 6", $br)) {
$is_ie6 = "yes";
} 
else {
$is_ie6 = "no";
}

if ($is_ie6 == "yes") {
echo "
<style type=\"text/css\">
* html #s5_dropdownback {
	height:79px;
	width:268px;
	background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='".$LiveSite."modules/mod_virtuemart_s5_dropdown_cart/mod_virtuemart_s5_dropdown_cart/s5_dropdown/s5_ddc_back.png', sizingmethod='crop');}
</style>";
}

?>
	<div class="vmCartModule" id="vmCartModule" style="margin-bottom:<?php echo $bmargin ?>px;margin-top:<?php echo $tmargin ?>px;margin-right:<?php echo $rmargin ?>px;margin-left:<?php echo $lmargin ?>px;background:url(<?php echo $LiveSite ?>modules/mod_virtuemart_s5_dropdown_cart/s5_dropdown/background.png) no-repeat top right; position:relative;width:<?php echo $_SESSION['width'] ?>px;height:<?php echo $_SESSION['height'] ?>px">
<script type="text/javascript">//<![CDATA[
var s5_scroll_var = "<?php echo $scroll ?>";
var s5_openclose_var = "<?php echo $openclose ?>";
var s5_openclose_display = "<?php echo $_SESSION['openclose_display'] ?>";



	/**
 * This file holds javscript functions that are used by the templates in the Theme
 * 
 */
 
 // AJAX FUNCTIONS 
function loadNewPage( el, url ) {
	
	var theEl = $(el);
	var callback = {
		success : function(responseText) {
			theEl.innerHTML = responseText;
			if( Lightbox ) Lightbox.init();
		}
	}
	var opt = {
	    // Use POST
	    method: 'get',
	    // Handle successful response
	    onComplete: callback.success
    }
	new Ajax( url + '&only_page=1', opt ).request();
}

function handleGoToCart() { document.location = live_site + '/index.php?option=com_virtuemart&page=shop.cart&product_id=' + formCartAdd.product_id.value ; }

function handleAddToCart( formId, parameters ) {
	formCartAdd = document.getElementById( formId );
	
	var callback = function(responseText) {
		updateMiniCarts();
		// close an existing mooPrompt box first, before attempting to create a new one (thanks wellsie!)
		if (document.boxB) {
			document.boxB.close();
			clearTimeout(timeoutID);
		}
		
		<?php if ($scroll == "no") { ?>
		document.boxB = new MooPrompt(notice_lbl, responseText, {
				buttons: 2,
				width:400,
				height:150,
				overlay: false,
				button1: ok_lbl,
				button2: cart_title,
				onButton2: 	handleGoToCart
			});
			
		setTimeout( 'document.boxB.close()', 3000 );
		
		<?php } ?>
	}
	
	var opt = {
	    // Use POST
	    method: 'post',
	    // Send this lovely data
	    data: $(formId),
	    // Handle successful response
	    onComplete: callback,
	    
	    evalScripts: true
	}

	new Ajax(formCartAdd.action, opt).request();
}
/**
* This function searches for all elements with the class name "vmCartModule" and
* updates them with the contents of the page "shop.s5_dropdown" after a cart modification event
*/
function updateMiniCarts() {
	var callbackCart = function(responseText) {
		carts = $$( '.vmCartModule' );
		if( carts ) {
			try {
				for (var i=0; i<carts.length; i++){
					carts[i].innerHTML = responseText;
		
					try {
						color = carts[i].getStyle( 'color' );
						bgcolor = carts[i].getStyle( 'background-color' );
						if( bgcolor == 'transparent' ) {
							// If the current element has no background color, it is transparent.
							// We can't make a highlight without knowing about the real background color,
							// so let's loop up to the next parent that has a BG Color
							parent = carts[i].getParent();
							while( parent && bgcolor == 'transparent' ) {
								bgcolor = parent.getStyle( 'background-color' );
								parent = parent.getParent();
							}
						}
						var fxc = new Fx.Style(carts[i], 'color', {duration: 1000});
						var fxbgc = new Fx.Style(carts[i], 'background-color', {duration: 1000});

						fxc.start( '#222', color );				
						fxbgc.start( 'none', bgcolor );
						if( parent ) {
							setTimeout( "carts[" + i + "].setStyle( 'background-color', 'transparent' )", 1000 );
						}
					} catch(e) {}
				}
			} catch(e) {}
		}
	}
	
	<?php if ($openclose == "yes") { ?>
	s5_tab_dd();shiftOpacity_dd('s5_dropdowncart');
	<?php } ?>
	var option = { method: 'post', onComplete: callbackCart, data: { only_page:1,page: "shop.s5_dropdown.php", option: "com_virtuemart" } }
	new Ajax( live_site + '/index2.php', option).request();
	
	<?php if ($openclose == "yes") { ?>
	window.setTimeout("s5_dd_close_check()",3000);
	<?php } ?>
	
	<?php if ($scroll == "yes") { ?>
	s5_dd_find_top();
	<?php } ?>
} 
/**
* This function allows you to present contents of a URL in a really nice stylish dhtml Window
* It uses the WindowJS, so make sure you have called
* vmCommonHTML::loadWindowsJS();
* before
*/
function fancyPop( url, parameters ) {
	
	parameters = parameters || {};
	popTitle = parameters.title || '';
	popWidth = parameters.width || 700;
	popHeight = parameters.height || 600;
	popModal = parameters.modal || false;
	
	window_id = new Window('window_id', {className: "mac_os_x", 
										title: popTitle,
										showEffect: Element.show,
										hideEffect: Element.hide,
										width: popWidth, height: popHeight}); 
	window_id.setAjaxContent( url, {evalScripts:true}, true, popModal );
	window_id.setCookie('window_size');
	window_id.setDestroyOnClose();
}


//]]></script>

		
<?php		

  if ($cart["idx"] == 0) {
	  echo "";
     $checkout = false;
	 $amount = 0;
  }
  else {
	  
	  
	  ?>

		  
		 <script type="text/javascript">//<![CDATA[
	/**
 * This file holds javscript functions that are used by the templates in the Theme
 * 
 */
 
 // AJAX FUNCTIONS 
function loadNewPage( el, url ) {
	
	var theEl = $(el);
	var callback = {
		success : function(responseText) {
			theEl.innerHTML = responseText;
			if( Lightbox ) Lightbox.init();
		}
	}
	var opt = {
	    // Use POST
	    method: 'get',
	    // Handle successful response
	    onComplete: callback.success
    }
	new Ajax( url + '&only_page=1', opt ).request();
}

function handleGoToCart() { document.location = live_site + '/index.php?option=com_virtuemart&page=shop.cart&product_id=' + formCartAdd.product_id.value ; }

function handleAddToCart( formId, parameters ) {
	formCartAdd = document.getElementById( formId );
	
	var callback = function(responseText) {
		updateMiniCarts();
		// close an existing mooPrompt box first, before attempting to create a new one (thanks wellsie!)
		if (document.boxB) {
			document.boxB.close();
			clearTimeout(timeoutID);
		}

		<?php if ($scroll == "no") { ?>
		document.boxB = new MooPrompt(notice_lbl, responseText, {
				buttons: 2,
				width:400,
				height:150,
				overlay: false,
				button1: ok_lbl,
				button2: cart_title,
				onButton2: 	handleGoToCart
			});
			
		setTimeout( 'document.boxB.close()', 3000 );
		<?php } ?>
	}
	
	var opt = {
	    // Use POST
	    method: 'post',
	    // Send this lovely data
	    data: $(formId),
	    // Handle successful response
	    onComplete: callback,
	    
	    evalScripts: true
	}

	new Ajax(formCartAdd.action, opt).request();
}
/**
* This function searches for all elements with the class name "vmCartModule" and
* updates them with the contents of the page "shop.s5_dropdown" after a cart modification event
*/
function updateMiniCarts() {
	var callbackCart = function(responseText) {
		carts = $$( '.vmCartModule' );
		if( carts ) {
			try {
				for (var i=0; i<carts.length; i++){
					carts[i].innerHTML = responseText;
		
					try {
						color = carts[i].getStyle( 'color' );
						bgcolor = carts[i].getStyle( 'background-color' );
						if( bgcolor == 'transparent' ) {
							// If the current element has no background color, it is transparent.
							// We can't make a highlight without knowing about the real background color,
							// so let's loop up to the next parent that has a BG Color
							parent = carts[i].getParent();
							while( parent && bgcolor == 'transparent' ) {
								bgcolor = parent.getStyle( 'background-color' );
								parent = parent.getParent();
							}
						}
						var fxc = new Fx.Style(carts[i], 'color', {duration: 1000});
						var fxbgc = new Fx.Style(carts[i], 'background-color', {duration: 1000});

						fxc.start( '#222', color );				
						fxbgc.start( 'none', bgcolor );
						if( parent ) {
							setTimeout( "carts[" + i + "].setStyle( 'background-color', 'transparent' )", 1000 );
						}
					} catch(e) {}
				}
			} catch(e) {}
		}
	}
	<?php if ($openclose == "yes") { ?>
	s5_tab_dd();shiftOpacity_dd('s5_dropdowncart');
	<?php } ?>
	var option = { method: 'post', onComplete: callbackCart, data: { only_page:1,page: "shop.s5_dropdown.php", option: "com_virtuemart" } }
	new Ajax( live_site + '/index2.php', option).request();
	
	<?php if ($openclose == "yes") { ?>	
	window.setTimeout("s5_dd_close_check()",3000);
	<?php } ?>
	
	<?php if ($scroll == "yes") { ?>
	s5_dd_find_top();
	<?php } ?>
	
} 
/**
* This function allows you to present contents of a URL in a really nice stylish dhtml Window
* It uses the WindowJS, so make sure you have called
* vmCommonHTML::loadWindowsJS();
* before
*/
function fancyPop( url, parameters ) {
	
	parameters = parameters || {};
	popTitle = parameters.title || '';
	popWidth = parameters.width || 700;
	popHeight = parameters.height || 600;
	popModal = parameters.modal || false;
	
	window_id = new Window('window_id', {className: "mac_os_x", 
										title: popTitle,
										showEffect: Element.show,
										hideEffect: Element.hide,
										width: popWidth, height: popHeight}); 
	window_id.setAjaxContent( url, {evalScripts:true}, true, popModal );
	window_id.setCookie('window_size');
	window_id.setDestroyOnClose();
}
	
	//]]></script> 
		  
	  
	  
	<?php  
	  
  $my_taxrate = 0;
  
	$s5_user_speed = 4;
    $checkout = True;
    $total = $order_taxable = $order_tax = 0;
    $amount = 0;
    $weight_total = 0;
    for ($i=0;$i<$cart["idx"];$i++) {
      $price = $ps_product->get_adjusted_attribute_price($cart[$i]["product_id"],$cart[$i]["description"]);
      $amount += $cart[$i]["quantity"];

      if (@$auth["show_price_including_tax"] == 1) {
        $my_taxrate = $ps_product->get_product_taxrate($cart[$i]["product_id"] );
        $price["product_price"] *= ($my_taxrate+1);
      }
	  
	  
	  
  
  	
	 $subtotal = round( $price["product_price"], 2 ) * $cart[$i]["quantity"];
      $total += $subtotal;


		$product_rows[$i]['subtotal'] = $CURRENCY_DISPLAY->getFullValue($subtotal);
		$product_rows[$i]['subtotal_with_tax'] = $CURRENCY_DISPLAY->getFullValue($subtotal * ($my_taxrate+1));  
	  
	  
      $weight_subtotal = ps_shipping_method::get_weight($cart[$i]["product_id"]) * $cart[$i]["quantity"];
      $weight_total += $weight_subtotal;
    }
    
    if( !empty($_SESSION['coupon_discount']) ) {
        $total -= $_SESSION['coupon_discount'];
    }
	
	$show_tax = true;
	$ordertotal = 0;
		if ($weight_total != 0 or TAX_VIRTUAL=='1') {
			$order_taxable = $ps_checkout->calc_order_taxable($vars);
			$tax_total = $ps_checkout->calc_order_tax($order_taxable, $vars);
		} else {
			$tax_total = 0;
		}
		if( $auth['show_price_including_tax']) {
			
		}
		
		$tax_total = Round( $order_taxable );
		$tax_total = $ps_checkout->calc_order_tax($order_taxable, $vars);
		$ordertotal = ($tax_total) + ($total);
 
  
  

  
     
  
  $empty_cart = false;
	$checkout = True;
	$total = $order_taxable = $order_tax = 0;
	$amount = 0;
	$weight_total = 0;
	$html="";

	// Determiine the cart direction and set vars
	if (@$_SESSION['vmCartDirection']) {
		$i=0;
		$up_limit = $cart["idx"] ;
	}
	else {
		$i=$cart["idx"]-1;
		$up_limit = -1;
	}
	$ci = 0;

	//Start loop through cart
	do
	{
		//If we are not showing the minicart start the styling of the individual products

		$price = $ps_product->get_adjusted_attribute_price($cart[$i]["product_id"],$cart[$i]["description"]);
		$price["product_price"] = $GLOBALS['CURRENCY']->convert( $price["product_price"], $price["product_currency"] );
		$amount += $cart[$i]["quantity"];
		$product_parent_id=$ps_product->get_field($cart[$i]["product_id"],"product_parent_id");
		if (@$auth["show_price_including_tax"] == 1) {
			$my_taxrate = $ps_product->get_product_taxrate($cart[$i]["product_id"] );
			$price["product_price"] *= ($my_taxrate+1);
		}
		$subtotal = round( $price["product_price"], 2 ) * $cart[$i]["quantity"];
		$total += $subtotal;
		$flypage_id = $product_parent_id;
		if($flypage_id == 0) {
			$flypage_id = $cart[$i]["product_id"];
		}
		$flypage = $ps_product->get_flypage($flypage_id);
		$category_id = vmGet( $cart[$i], 'category_id', 0 );
		if ($product_parent_id) {
			$url = $sess->url(URL . "index.php?page=shop.product_details&flypage=$flypage&product_id=$product_parent_id&category_id=$category_id");
		}
		else {
			$url = $sess->url(URL . "index.php?page=shop.product_details&flypage=$flypage&category_id=$category_id&product_id=" . $_SESSION['cart'][$i]["product_id"]);
		}
		$html = str_replace("_"," ",$ps_product->getDescriptionWithTax( $_SESSION['cart'][$i]["description"], $_SESSION['cart'][$i]["product_id"] ))." ";
		if ($product_parent_id) {
			$db_detail=$ps_product->attribute_sql($cart[$i]["product_id"],$product_parent_id);
			while ($db_detail->next_record()) {
				$html .= $db_detail->f("attribute_value") . " ";
			}
		}
		
		
		$minicart[$ci]['url'] = $url;
		$minicart[$ci]['product_thumb_image'] = ($ps_product->get_field($_SESSION['cart'][$i]["product_id"], "product_thumb_image"));
		$minicart[$ci]['product_name'] = shopMakeHtmlSafe($ps_product->get_field($_SESSION['cart'][$i]["product_id"], "product_name"));
		$minicart[$ci]['quantity'] = $cart[$i]["quantity"];
		$minicart[$ci]['price'] = $CURRENCY_DISPLAY->getFullValue( $subtotal );
		$minicart[$ci]['attributes'] = $html;
		if(@$_SESSION['vmCartDirection']) {
			$i++;
		}
		else {
			$i--;
		}

		$ci++;
	} while ($i != $up_limit);
	//End loop through cart


}
if( !empty($_SESSION['coupon_discount']) ) {
	$total -= $_SESSION['coupon_discount'];
}
if(!$empty_cart) {
	if ($amount > 1) {
		$total_products = $amount ." ". $VM_LANG->_('PHPSHOP_PRODUCTS_LBL');
	}
	else {
		$total_products = $amount ." ". $VM_LANG->_('PHPSHOP_PRODUCT_LBL');
	}



	 $total_price = $CURRENCY_DISPLAY->getFullValue( $total );
	 
}
// Display clear cart
$delete_cart = '';
if(@$_SESSION['vmEnableEmptyCart'] && !@$_SESSION['vmMiniCart']) {
	// Output the empty cart button
	//echo vmCommonHTML::scriptTag( $mosConfig_live_site.'/components/'.$option.'/js/wz_tooltip.js' );
	$delete_cart = "<a href=\"".$_SERVER['SCRIPT_NAME'] . "?page=shop.cart_reset&amp;option=com_virtuemart&amp;option2=$option&amp;product_id=$prodid&amp;category_id=$catid&amp;return=$page&amp;flypage=$flypage&amp;Itemid=$Itemid\" title=\"". $VM_LANG->_('PHPSHOP_EMPTY_YOUR_CART') ." \">
					<img src=\"". $mosConfig_live_site ."/images/cancel_f2.png\" width=\"12\" border=\"0\" style=\"float: right;vertical-align: middle;\" alt=\"". $VM_LANG->_('PHPSHOP_EMPTY_YOUR_CART') ." \" />
      </a>"; 
	$html1 = vmToolTip($VM_LANG->_('VM_EMPTY_YOUR_CART_TIP'), $VM_LANG->_('PHPSHOP_EMPTY_YOUR_CART'),'','',$delete_cart,true);
	$delete_cart = $html1;

}

$href = $sess->url($mm_action_url."index.php?page=shop.cart");
$href2 = $sess->url($mm_action_url."index2.php?page=shop.cart", true);
$text = $VM_LANG->_('PHPSHOP_CART_SHOW');
if( @$_SESSION['vmUseGreyBox'] ) {
	$show_cart = vmCommonHTML::getGreyboxPopUpLink( $href2, $text, '', $text, '', 500, 600, $href );
}
else {
	$show_cart = vmCommonHTML::hyperlink( $href, $text, '', $text, '' );
}

$tpl->set('minicart',$minicart);
$tpl->set('empty_cart', $empty_cart);
$tpl->set('delete_cart', $delete_cart);
$vmMinicart = @$_SESSION['vmMiniCart'];
$tpl->set('total_products', @$total_products);
$tpl->set('total_price', @$total_price);
$tpl->set('show_cart', @$show_cart);
$saved_cart_text = "";
if($saved_cart['idx'] != 0) {
	$saved_cart_text = "<br style=\"clear:both;\"/><a href=\"".str_replace("Itemid=26","Itemid=34",$sess->url($mm_action_url."index.php?page=shop.savedcart"))."\" class=\"savedCart\">".$VM_LANG->_('VM_RECOVER_CART')."</a>";
}
$tpl->set('saved_cart',$saved_cart_text);
include( 'modules/mod_virtuemart_s5_dropdown_cart/minicart.tpl.php');

?> 

</div></div></div></div>

<script type="text/javascript">//<![CDATA[
var drop_down_height = document.getElementById("s5_dropdowncart").offsetHeight;
document.getElementById("s5_dropdowncart").style.display = 'none';
document.getElementById("s5_dropdowncart").style.height = drop_down_height + 'px';
document.getElementById("s5_dropdowncart").style.overflow = 'hidden';
var dd_height = drop_down_height;
var dd_height_close = drop_down_height;
var user_speed = 26;
var user_speed_holder = 26;
var dd_holder = dd_height;

function s5_getdropheight() {
if (document.getElementById("vmCartModule2")) {
if (s5_closing == "0" && s5_opening == "0") {
var drop_down_height2 = document.getElementById("vmCartModule2").offsetHeight;
document.getElementById("s5_dropdowncart").style.height = drop_down_height2 + 'px';
	if (document.getElementById("s5_open_dd")) {
		if (document.getElementById("s5_dropdowncart").offsetHeight > "15") {
		document.getElementById("s5_open_dd").style.display = 'none';
		document.getElementById("s5_closed_dd").style.display = 'block';
		}
		else {
		document.getElementById("s5_closed_dd").style.display = 'none';
		document.getElementById("s5_open_dd").style.display = 'block';
		}
		}
	}
}
}

var myInter_s5_dd_cart;
myInter_s5_dd_cart = window.setInterval("s5_getdropheight()",1);
	
var timeoutID;
var Lightbox;
//]]></script>
