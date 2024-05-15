<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );

global $vmMinicart;

$LiveSite = JURI::base();

?>

<script type="text/javascript">var live_site="<?php echo $LiveSite ?>"</script>

<?php 

if ($cart["idx"] == 0) {
	 
	 
	echo "
	
<div id=\"s5_dropdownback\">
	 
			<div style='color:#".$_SESSION['fontcolor'] .";margin-bottom:8px;font-weight:bold;font-size:".$_SESSION['fontsize'] ."px'>
				". $_SESSION['introtext']."
			</div>
			
			<div style='color:#".$_SESSION['fontcolor'] ."'>
			
				<div style='color:#".$_SESSION['fontcolor'] .";float:left; margin-right:20px;font-size:".$_SESSION['fontsize'] ."px'>
					" . $amount ." ". $_SESSION['items'] . " 
				</div>
				
				<div style='color:#".$_SESSION['fontcolor'] .";float:left;font-size:".$_SESSION['fontsize'] ."px'>
				 ".$_SESSION['order_totall']. ": ". $CURRENCY_DISPLAY->getFullValue($total) ."
				</div>
			
			</div>

</div>

		
		
<div id=\"s5_dropdowncart\" style='background:#". $_SESSION['backcolor']. ";display:". $_SESSION['openclose_display']. ";position:absolute;z-index:2;float:left;overflow:hidden;width:242px;margin:0 auto;margin-top:10px;border-bottom:1px solid #333333;border-left:1px solid #333333;border-right:1px solid #333333;color:#".$_SESSION['backfontcolor'].";'>

<div style=\"padding:6px;\">
<script type=\"text/javascript\" src=\"".$LiveSite."modules/mod_virtuemart_s5_dropdown_cart/s5_dropdown/s5_dropdown.js\"></script>
<div id=\"vmCartModule2\" style=\"position:relative\">
		
";
	
}

else {
	 
	 
	echo "
	
<div id=\"s5_dropdownback\">
			
			<div style='color:#".$_SESSION['fontcolor'] .";margin-bottom:8px;font-weight:bold;font-size:".$_SESSION['fontsize'] ."px'>
				". $_SESSION['introtext']."
			</div>
			
			<div style='color:#".$_SESSION['fontcolor'] ."'>
				
				<div style='color:#".$_SESSION['fontcolor'] .";float:left; margin-right:20px;font-size:".$_SESSION['fontsize'] ."px'>
					" . $amount ." ". $_SESSION['items'] . " 
				</div>
				
				<div style='color:#".$_SESSION['fontcolor'] .";float:left;font-size:".$_SESSION['fontsize'] ."px'>
				 ".$_SESSION['order_totall']. ": ". $CURRENCY_DISPLAY->getFullValue($total) ."
				</div>
				
			</div>
				
			<div style=\"clear:both\"></div>
			
			<div id=\"s5_dd_buttons\" style=\"margin-top:8px\">
			
				<div onclick=\"window.document.location.href='" .$sess->url($mm_action_url."index.php?page=shop.cart")."'\" style='font-weight:bold;margin-right:20px; cursor:pointer;color:#".$_SESSION['fontcolor'] .";float:left;padding:1px;padding-right:21px;background:url(".$LiveSite."modules/mod_virtuemart_s5_dropdown_cart/s5_dropdown/arrow.png) no-repeat center right;font-size:".$_SESSION['fontsize'] ."px'>
				". $_SESSION['button1text'] ."
				</div>
				
				<div onclick=\"s5_tab_dd();shiftOpacity_dd('s5_dropdowncart');\" style='font-weight:bold;cursor:pointer;color:#".$_SESSION['fontcolor'] ."'>
					<div id=\"s5_open_dd\" style=\"display:none;float:left;padding:1px;padding-right:21px;background:url(".$LiveSite."modules/mod_virtuemart_s5_dropdown_cart/s5_dropdown/arrow.png) no-repeat center right;font-size:".$_SESSION['fontsize'] ."px\">
					".$_SESSION['button2text']."
					</div>
					<div id=\"s5_closed_dd\" style=\"display:none;float:left;padding:1px;padding-right:21px;background:url(".$LiveSite."modules/mod_virtuemart_s5_dropdown_cart/s5_dropdown/arrow.png) no-repeat center right;font-size:".$_SESSION['fontsize'] ."px\">
					". $_SESSION['button2textclicked'] ."
					</div>
				</div>		
			</div>
				
				<div style=\"clear:both\"></div>
	
</div>

	<div style=\"clear:both\"></div>

		
		
<div id=\"s5_dropdowncart\" style='background-color:#". $_SESSION['backcolor']. ";display:". $_SESSION['openclose_display']. ";position:absolute;z-index:2;float:left;overflow:hidden;width:". $_SESSION['width']. "px;margin:0 auto;margin-top:10px;border:1px solid #". $_SESSION['bordercolor']. ";color:#".$_SESSION['backfontcolor'].";'>

<div style=\"padding:12px;\">
<script type=\"text/javascript\" src=\"".$LiveSite."modules/mod_virtuemart_s5_dropdown_cart/s5_dropdown/s5_dropdown.js\"></script>
<div id=\"vmCartModule2\" style=\"position:relative;font-size:".$_SESSION['fontsize'] ."px\">
		
";
	
}

?>

<script type="text/javascript">

if (s5_openclose_display == "none") {
document.getElementById("s5_dropdowncart").style.display = 'block';
}

</script>

<?php


    // Loop through each row and build the table
    foreach( $minicart as $cart ) { 		

		foreach( $cart as $attr => $val ) {
			// Using this we make all the variables available in the template
			// translated example: $this->set( 'product_name', $product_name );
			$this->set( $attr, $val );
		}
        if(!$vmMinicart) { // Build Minicart
            ?>
            
			<center>
				<a href="<?php echo $cart['url'] ?>">
				<img src="components/com_virtuemart/shop_image/product/<?php echo $cart['product_thumb_image'] ?>" alt="" border="0" height="90"/>
				</a>
			</center>
			
			
			<?php echo $cart['quantity'] ?>&nbsp;x&nbsp; <strong><a href="<?php echo $cart['url'] ?>"><?php echo $cart['product_name'] ?></a></strong>
			<span style="font-size:".$_SESSION['fontsize'] ."px">
				<br/>
				<?php echo $_SESSION['individual_pricee'] ?>:&nbsp;<?php echo $cart['price'] ?>
				<br/>
				<?php echo $cart['attributes']; ?>
				<br style="clear: both;" />
			</span>
			<hr style="clear: both;border-bottom:none;border-right:none;border-left:none;border-top: 1px dotted #000; height:1px;" />
			<br/>
			<br/>
			 <?php 
        }
		
    }

if(!$vmMinicart) { ?>
    <hr style="clear: both;" />
<?php } ?>
<div style="float: left;font-size:<?php echo $fontsize ?>px">
<?php echo $total_products ?>
</div>
<div style="float: right;font-size:<?php echo $fontsize ?>px">
<?php echo $total_price ?>
</div>
<?php if (!$empty_cart && !$vmMinicart) { ?>
    <br/><br style="clear:both" /><div align="center" style="font-size:<?php echo $fontsize ?>px">
    <?php echo $show_cart ?>
    </div><br/><br/>

<?php } 
echo $saved_cart;
?>
