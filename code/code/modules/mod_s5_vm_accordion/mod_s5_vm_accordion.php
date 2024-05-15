<?php

/***************************/
/* Title : Shape5.com Virtuemart Accordion Menu Module
/* Author : shape5.com
/* Created : 11/2007
/* Contact : contact@shape5.com
/* Copyright shape5.com
/* This module and any files associated with it may not be redistributed for resale of any kind.
/*****************************/

// no direct access
defined('_JEXEC') or die('Restricted access');

$moduleclass_sfx  = $params->get( 'moduleclass_sfx');

$listall_show  = $params->get( 'listall_show');
$search_show  = $params->get( 'search_show');
$maint_show  = $params->get( 'maint_show');
$cart_show  = $params->get( 'cart_show');
$pretext_s5_vm  = $params->get( 'pretext');
$background  = $params->get( 'background');
$mouseover  = "2";
$border  = $params->get( 'border');
$fontsize1  = $params->get( 'fontsize1');
$fontcolor1  = $params->get( 'fontcolor1');
$lineheight1  = $params->get( 'lineheight1');
$fontweight1  = $params->get( 'fontweight1');
$fontsize2  = $params->get( 'fontsize2');
$fontcolor2  = $params->get( 'fontcolor2');
$lineheight2  = $params->get( 'lineheight2');
$fontweight2  = $params->get( 'fontweight2');
$fontsize3  = $params->get( 'fontsize3');
$fontcolor3  = $params->get( 'fontcolor3');
$lineheight3  = $params->get( 'lineheight3');
$fontweight3  = $params->get( 'fontweight3');
$arrowcolor  = "1";
$marginr1  = $params->get( 'marginr1');
$marginl1  = $params->get( 'marginl1');
$paddingl1  = $params->get( 'paddingl1');
$marginr2  = $params->get( 'marginr2');
$marginl2  = $params->get( 'marginl2');
$paddingl2  = $params->get( 'paddingl2');
$marginr3  = $params->get( 'marginr3');
$marginl3  = $params->get( 'marginl3');
$paddingl3  = $params->get( 'paddingl3');
$fontcolorhover1  = $params->get( 'fontcolorhover1');
$fontdecoration1  = $params->get( 'fontdecoration1');
$fontcolorhover2  = $params->get( 'fontcolorhover2');
$fontdecoration2  = $params->get( 'fontdecoration2');
$fontcolorhover3  = $params->get( 'fontcolorhover3');
$fontdecoration3  = $params->get( 'fontdecoration3');
$margint  = $params->get( 'margint');
$marginb  = $params->get( 'marginb');
$marginl  = $params->get( 'marginl');
$marginr  = $params->get( 'marginr');
$speed1  = $params->get( 'speed1');
$speed2  = $params->get( 'speed2');
$ie7speed1  = $params->get( 'ie7speed1');
$fadespeed  = $params->get( 'fadespeed');
$expand  = "0";
$arrowc = "";
$mouseeffect = "";

$fadespeed = $fadespeed*1000;
$ie7speed2 = $ie7speed1 - 4;

if( !isset( $mosConfig_absolute_path ) ) {
	$mosConfig_absolute_path = $GLOBALS['mosConfig_absolute_path']	= JPATH_SITE;
}

$LiveSite = JURI::base();

require_once( $mosConfig_absolute_path.'/components/com_virtuemart/virtuemart_parser.php' );


$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
if(ereg("msie 6", $br)) {
$iss_ie6_s5_vm = "yes";
} 
else {
$iss_ie6_s5_vm = "no";
}
?>

<?php
$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
if(ereg("msie 7", $br)) {
$iss_ie7_s5_vm = "yes";
} 
else {
$iss_ie7_s5_vm = "no";
}
?>

<script type="text/javascript">
var fadespeed = <?php echo $fadespeed ?>;
<?php if ($iss_ie6_s5_vm == "yes") { ?>
if (fadespeed != "0") {
var s5_vm_inc1 = <?php echo $speed1 ?>;
var s5_vm_inc2 = <?php echo $speed2 ?>;
var s5_vm_spaco = 12;
var s5_vm_spacc = 12;
}
else {
var s5_vm_inc1 = <?php echo $speed1 ?>;
var s5_vm_inc2 = <?php echo $speed2 ?>;
var s5_vm_spaco = 7;
var s5_vm_spacc = 7;
}
<?php } ?>
<?php if ($iss_ie7_s5_vm == "yes") { ?>
if (fadespeed != "0") {
var s5_vm_inc1 = <?php echo $speed1 ?>;
var s5_vm_inc2 = <?php echo $speed2 ?>;
var s5_vm_spaco = <?php echo $ie7speed1 ?>;
var s5_vm_spacc = <?php echo $ie7speed1 ?>;
}
else {
var s5_vm_inc1 = <?php echo $speed1 ?>;
var s5_vm_inc2 = <?php echo $speed2 ?>;
var s5_vm_spaco = <?php echo $ie7speed2 ?>;
var s5_vm_spacc = <?php echo $ie7speed2 ?>;
}
<?php } ?>
<?php if ($iss_ie6_s5_vm == "no" && $iss_ie7_s5_vm == "no") { ?>
var s5_vm_inc1 = <?php echo $speed1 ?>;
var s5_vm_inc2 = <?php echo $speed2 ?>;
var s5_vm_spaco = 9;
var s5_vm_spacc = 9;
<?php } ?>
</script>

<?php if ($pretext_s5_vm != "") { ?>
<div style="padding: 8px">
<?php echo $pretext_s5_vm ?>
</div>
<?php } ?>

<?php


//setup Itemid
$database = new ps_DB();
$class_mainlevel = "mainlevel".$moduleclass_sfx;
$query = "SELECT id"
			. "\n FROM #__menu"
			. "\n WHERE type = 'component'"
			//. "\n AND componentid = " . (int) $component_row->id
			. "\n AND link LIKE '%com_virtuemart%'"
			;
			$database->setQuery( $query );
			$Itemid = $database->loadResult();		
$query = 'SELECT a.category_id, a.category_name, a.category_publish, a.list_order, f.category_parent_id, f.category_child_id'
        . ' FROM #__vm_category AS a, #__vm_category_xref AS f'
        . ' WHERE a.category_publish="Y" AND a.category_id = f.category_child_id AND f.category_parent_id=\'0\''
        . ' ORDER BY a.list_order';
$database->setQuery( $query);
$rows = $database->loadObjectList();
	
?>

<div id="s5_vm_container" style="margin-top:<?php echo $margint ?>; margin-left:<?php echo $marginl ?>; margin-right:<?php echo $marginr ?>">
			<ul class="s5_vm_mainnav" id="s5_vm_main" style="min-width:100%;width: 100%; <?php if ($background != "none") { ?>background:<?php echo $background ?>; <?php } ?>text-align:left; background-image: none; margin: 0px; padding: 0px">
<?php
foreach($rows as $row){						
   $query = 'SELECT a.category_id, a.category_name, a.category_publish, a.list_order, f.category_parent_id, f.category_child_id'
   . ' FROM #__vm_category AS a, #__vm_category_xref AS f'
   . ' WHERE a.category_publish="Y" AND a.category_id = f.category_child_id AND f.category_parent_id='.$row->category_id
   . ' ORDER BY a.list_order';						
   $database->setQuery( $query);
   $sub_rows = $database->loadObjectList();

foreach($sub_rows as $row2){						
   $query = 'SELECT a.category_id, a.category_name, a.category_publish, a.list_order, f.category_parent_id,f.category_child_id'
   . ' FROM #__vm_category AS a, #__vm_category_xref AS f'
   . ' WHERE a.category_publish="Y" AND a.category_id = f.category_child_id AND f.category_parent_id='.$row2->category_id
   . ' ORDER BY a.list_order';
							
   $database->setQuery( $query);
   $sub_rows2 = $database->loadObjectList();
}												
   if($sub_rows){								
      $link = sefRelToAbs( 'index.php?option=com_virtuemart&page=shop.browse&category_id='. $row->category_id .'&Itemid='. 

$Itemid );

if( $expand=="0" ) { 

if( $mouseover=="1" ) {  
		
echo '<li class="level1wc" style="padding-left:'.$paddingl1.'; margin-left:'.$marginl1.'; margin-right:'.$marginr1.'; background:url('.$LiveSite.'templates/shopper_frenzy/images/s5_vm_menu.png) no-repeat top right; cursor: pointer" onmouseover="s5_vm_load()"><a href="'.$link.'" target="_self" onmouseover="this.style.color = \''.$fontcolorhover1.'\'; this.style.textDecoration = \''.$fontdecoration1.'\'" onmouseout="this.style.color = \''.$fontcolor1.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor1.'; font-size:'.$fontsize1.'; font-weight:'.$fontweight1.'; line-height:'.$lineheight1.'; background: none; padding: 0px; margin: 0px;">'.$row->category_name.'</a>';
		
} 
else  if( $mouseover=="0" ) {   		

echo '<li class="level1wc" style="padding-left:'.$paddingl1.'; margin-left:'.$marginl1.'; margin-right:'.$marginr1.'; background:url('.$LiveSite.'templates/shopper_frenzy/images/s5_vm_menu.png) no-repeat top right; cursor: pointer" onclick="s5_vm_load()"><a href="'.$link.'" target="_self" onmouseover="this.style.color = \''.$fontcolorhover1.'\'; this.style.textDecoration = \''.$fontdecoration1.'\'" onmouseout="this.style.color = \''.$fontcolor1.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor1.'; font-size:'.$fontsize1.'; font-weight:'.$fontweight1.'; line-height:'.$lineheight1.'; background: none; padding: 0px; margin: 0px;">'.$row->category_name.'</a>';
	
} 

else {   		

echo '<li class="level1wc" style="padding-left:'.$paddingl1.'; margin-left:'.$marginl1.'; margin-right:'.$marginr1.'; background:url('.$LiveSite.'templates/shopper_frenzy/images/s5_vm_menu.png) no-repeat top right; cursor: pointer" onclick="s5_vm_load()" onmouseover="s5_vm_load()"><a href="'.$link.'" target="_self" onmouseover="this.style.color = \''.$fontcolorhover1.'\'; this.style.textDecoration = \''.$fontdecoration1.'\'" onmouseout="this.style.color = \''.$fontcolor1.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor1.'; font-size:'.$fontsize1.'; font-weight:'.$fontweight1.'; line-height:'.$lineheight1.'; padding: 0px; margin: 0px">'.$row->category_name.'</a>';
	
} 

}

else {

echo '<li class="level1wc" style="padding-left:'.$paddingl1.'; margin-left:'.$marginl1.'; margin-right:'.$marginr1.'"><a href="'.$link.'" target="_self" onmouseover="this.style.color = \''.$fontcolorhover1.'\'; this.style.textDecoration = \''.$fontdecoration1.'\'" onmouseout="this.style.color = \''.$fontcolor1.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor1.'; font-size:'.$fontsize1.'; font-weight:'.$fontweight1.'; line-height:'.$lineheight1.'; background: none; padding: 0px; margin: 0px;">'.$row->category_name.'</a>';

}
		if( $expand=="0" ) { 
         echo '<div style="height:0px; overflow:hidden; padding-top:0px; padding-bottom:0px"><div style="visibility:visible; padding-top:0px; padding-bottom:0px"><ul class="s5_accordion1" style="margin: 0px; padding: 0px; padding-top:2px">';
		}
		if( $expand=="1" ) { 
         echo '<div><div style="visibility:visible; padding-top:0px; padding-bottom:0px"><ul class="s5_accordion1" style="margin: 0px; padding: 0px; padding-top:2px">';
		}
         if($sub_rows){
            foreach($sub_rows as $sub_row){
          }

foreach($sub_rows as $row2){						
   $query = 'SELECT a.category_id, a.category_name, a.category_publish, a.list_order, f.category_parent_id, f.category_child_id'
   . ' FROM #__vm_category AS a, #__vm_category_xref AS f'
   . ' WHERE a.category_publish="Y" AND a.category_id = f.category_child_id AND f.category_parent_id='.$row2->category_id
   . ' ORDER BY a.list_order';							
   $database->setQuery( $query);
   $sub_rows2 = $database->loadObjectList();

foreach($sub_rows2 as $row3){						
   $query = 'SELECT a.category_id, a.category_name, a.category_publish, a.list_order, f.category_parent_id, f.category_child_id'
   . ' FROM #__vm_category AS a, #__vm_category_xref AS f'
   . ' WHERE a.category_publish="Y" AND a.category_id = f.category_child_id AND f.category_parent_id='.$row3->category_id
   . ' ORDER BY a.list_order';						
   $database->setQuery( $query);
   $sub_rows3 = $database->loadObjectList();
}

   if(!$sub_rows2){
      $link = sefRelToAbs( 'index.php?option=com_virtuemart&page=shop.browse&category_id='. $row2->category_id 

.'&Itemid='. $Itemid );
      echo '<li class="level2nc" style="background:none; padding-left:'.$paddingl2.'; margin-left:'.$marginl2.'; margin-right:'.$marginr2.'"><a href="'.$link.'" 

target="_self" onmouseover="this.style.color = \''.$fontcolorhover2.'\'; this.style.textDecoration = \''.$fontdecoration2.'\'" onmouseout="this.style.color = \''.$fontcolor2.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor2.'; font-size:'.$fontsize2.'; font-weight:'.$fontweight2.'; line-height:'.$lineheight2.'; background: none; padding: 0px; margin: 0px;">'.$row2->category_name.'</a>';
    }
													
   if($sub_rows2){							
      $link = sefRelToAbs( 'index.php?option=com_virtuemart&page=shop.browse&category_id='. $row2->category_id 

.'&Itemid='. $Itemid );
      echo '<li class="level2wc" style="background:none; padding-left:'.$paddingl2.'; margin-left:'.$marginl2.'; margin-right:'.$marginr2.'"><a href="'.$link.'" target="_self" onmouseover="this.style.color = \''.$fontcolorhover2.'\'; this.style.textDecoration = \''.$fontdecoration2.'\'" onmouseout="this.style.color = \''.$fontcolor2.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor2.'; font-size:'.$fontsize2.'; font-weight:'.$fontweight2.'; line-height:'.$lineheight2.'; background: none; padding: 0px; margin: 0px;">'.$row2->category_name.'</a>';

         echo '<ul class="s5_accordion2" style="border-top:'.$border.'; margin: 0px; padding: 0px">';

         if($sub_rows2){
            foreach($sub_rows2 as $sub_row2){
            if($sub_rows3){
            }
   }
foreach($sub_rows2 as $row3){						
   $query = 'SELECT a.category_id, a.category_name, a.category_publish, a.list_order, f.category_parent_id, f.category_child_id'
   . ' FROM #__vm_category AS a, #__vm_category_xref AS f'
   . ' WHERE a.category_publish="Y" AND a.category_id = f.category_child_id AND f.category_parent_id='.$row3->category_id
   . ' ORDER BY a.list_order';							
   $database->setQuery( $query);
   $sub_rows3 = $database->loadObjectList();

   if($sub_rows3){					
      $link = sefRelToAbs( 'index.php?option=com_virtuemart&page=shop.browse&category_id='. $row3->category_id 

.'&Itemid='. $Itemid );
      echo '<li class="level3" style="background:none; padding-left:'.$paddingl3.'; margin-left:'.$marginl3.'; margin-right:'.$marginr3.'"><a href="'.$link.'" 

target="_self" onmouseover="this.style.color = \''.$fontcolorhover3.'\'; this.style.textDecoration = \''.$fontdecoration3.'\'" onmouseout="this.style.color = \''.$fontcolor3.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor3.'; font-size:'.$fontsize3.'; font-weight:'.$fontweight3.'; line-height:'.$lineheight3.'; background: none; padding: 0px; margin: 0px;">'.$row3->category_name.'</a>';
									
         if($sub_rows3){
            foreach($sub_rows3 as $sub_row3){
            }											        
}
}
   if(!$sub_rows3){
      $link = sefRelToAbs( 'index.php?option=com_virtuemart&page=shop.browse&category_id='. $row3->category_id 

.'&Itemid='. $Itemid );
      echo '<li class="level3" style="background:none; padding-left:'.$paddingl3.'; margin-left:'.$marginl3.'; margin-right:'.$marginr3.'"><a href="'.$link.'" 
target="_self" onmouseover="this.style.color = \''.$fontcolorhover3.'\'; this.style.textDecoration = \''.$fontdecoration3.'\'" onmouseout="this.style.color = \''.$fontcolor3.'\'; this.style.textDecoration = \'none\'" style="text-decoration:none; color:'.$fontcolor3.'; font-size:'.$fontsize3.'; font-weight:'.$fontweight3.'; line-height:'.$lineheight3.'; background: none; padding: 0px; margin: 0px;">'.$row3->category_name.'</a>';
    }			
   echo '</li>';
}
         echo '</ul>';								
         }				
   }					
   echo '</li>';
}
        echo '</ul></div></div>';											
         }				
   }				
   else {								
   $link = sefRelToAbs( 'index.php?option=com_virtuemart&page=shop.browse&category_id='. $row->category_id .'&Itemid='. 
$Itemid );
   echo '<li class="level1nc" style="background:url('.$LiveSite.'templates/shopper_frenzy/images/s5_vm_menu.png) no-repeat top right;padding-left:'.$paddingl1.'; margin-left:'.$marginl1.'; margin-right:'.$marginr1.'"><a href="'.$link.'" onmouseover="this.style.color = \''.$fontcolorhover1.'\'; this.style.textDecoration = \''.$fontdecoration1.'\'" onmouseout="this.style.color = \''.$fontcolor1.'\'; this.style.textDecoration = \'none\'" target="_self" style="text-decoration:none; color:'.$fontcolor1.'; font-size:'.$fontsize1.'; font-weight:'.$fontweight1.'; line-height:'.$lineheight1.'; background: none; padding: 0px; margin: 0px;">'.$row->category_name.'</a>';		

   }
   echo '</li>';
}
?>
			</ul>
</div><div style="height:<?php echo $marginb ?>"></div>

<script type="text/javascript">
var s5_vm_active_button = "<?php echo $LiveSite ?>templates/shopper_frenzy/images/<?php echo $_SESSION['s5_style'] ?>/s5_vm_menu.png"
var s5_vm_non_active_button = "<?php echo $LiveSite ?>templates/shopper_frenzy/images/s5_vm_menu.png"
var s5_vm_marginbottom_holder = "<?php echo $marginb ?>";			
</script>
<?php if ($expand=="0") { ?>
<script type="text/javascript" src="<?php echo $LiveSite ?>modules/mod_s5_vm_accordion/s5_vm_accordion/s5_vm_accordion.js"></script>	
<?php } ?>


<?php

global $mosConfig_absolute_path;
require_once( $mosConfig_absolute_path.'/components/com_virtuemart/virtuemart_parser.php' );

require_once(CLASSPATH.'ps_product_category.php');
$ps_product_category =& new ps_product_category();

global $my, $root_label, $mosConfig_allowUserRegistration, $jscook_type, $jscookMenu_style, $jscookTree_style, $VM_LANG, $sess, $mm_action_url;

$Itemid = $sess->getShopItemid();

$category_id = vmRequest::getInt( 'category_id' );

$mod_dir = dirname( __FILE__ );

$cart = $_SESSION["cart"];
$auth = $_SESSION["auth"];


?>



<?php if ( $maint_show == 'yes' ) { ?>

<?php $perm = new ps_perm;

if ($perm->check("admin,storeadmin") 
      && ((!stristr($my->usertype, "admin") ^ PSHOP_ALLOW_FRONTENDADMIN_FOR_NOBACKENDERS == '' ) 
          || stristr($my->usertype, "admin")
      )
    ) { ?>
    <tr> 
      <td colspan="2"><a class="<?php echo $class_mainlevel ?>" href="<?php $sess->purl(SECUREURL . "index2.php?page=store.index&pshop_mode=admin");
      echo "\">".$VM_LANG->_PHPSHOP_ADMIN_MOD; ?></a><br /><br /></td>
    </tr>
  <?php }
   if ($perm->is_registered_customer($auth["user_id"])) {
  ?> 
    <tr> 
      <td colspan="2"><a style="font-weight:bold" class="<?php echo $class_mainlevel ?>" href="<?php $sess->purl(SECUREURL . "index.php?page=account.index");?>">
      <?php echo $VM_LANG->_PHPSHOP_ACCOUNT_TITLE ?></a><br /><br /></td>
    </tr><?php 
}

?>

<?php } ?>


<?php if ( $listall_show == 'yes' ) { ?>
          <a href="<?php $sess->purl($mm_action_url."index.php?page=shop.browse&category=") ?>">
          <?php echo $VM_LANG->_('PHPSHOP_LIST_ALL_PRODUCTS') ?>
          </a>
		   <br /> <br />
<?php } ?>





<?php if ( $search_show == 'yes' ) { ?>
  <!--BEGIN Search Box --> 
  <tr> 
    <td colspan="2">
	  <hr />
      <label for="shop_search_field"><?php echo $VM_LANG->_('PHPSHOP_PRODUCT_SEARCH_LBL') ?></label>
      <form action="<?php echo $mm_action_url."index.php" ?>" method="get">
        <input id="shop_search_field" title="<?php echo $VM_LANG->_('PHPSHOP_SEARCH_TITLE') ?>" class="inputbox" type="text" size="12" name="keyword" />
        <input class="button" type="submit" name="Search" value="<?php echo $VM_LANG->_('PHPSHOP_SEARCH_TITLE') ?>" />
		<input type="hidden" name="Itemid" value="<?php echo intval(@$_REQUEST['Itemid']) ?>" />
		<input type="hidden" name="option" value="com_virtuemart" />
		<input type="hidden" name="page" value="shop.browse" />
	  </form>
        <br />
        <a href="<?php echo $sess->url($mm_action_url."index.php?option=com_virtuemart&page=shop.search") ?>">
            <?php echo $VM_LANG->_('PHPSHOP_ADVANCED_SEARCH') ?>
        </a>
    </td>
  </tr>
  <!-- End Search Box --> 
<?php } ?>

  
  
  <?php 
  
  if (ENABLE_DOWNLOADS == '1') { ?>
  
  <tr> 
    <td colspan="2">
        <a class="<?php echo $class_mainlevel ?>" href="<?php $sess->purl(SECUREURL . "index.php?page=shop.downloads");?>">
        <?php echo $VM_LANG->_('PHPSHOP_DOWNLOADS_TITLE') ?>
        </a>
    </td>
  </tr><?php
}
/**
** END DOWNLOAD MOD
/*********************/
  
// Show a link to the cart and show the mini cart
// Check to see if minicart module is published, if it is prevent the minicart displaying in the VM module
$q="SELECT published FROM #__modules WHERE module='mod_virtuemart_cart'";
$database->query( $q );

if (USE_AS_CATALOGUE != '1' && $cart_show == 'yes'  && !$database->f("published")  ) {
	$_SESSION['vmMiniCart'] = true;
?>
    <tr>
        <td colspan="2">
        	<?php
	        $class_att = 'class="'. $class_mainlevel .'"';
	        $href = $sess->url($mm_action_url."index.php?page=shop.cart");
	        $href2 = $sess->url($mm_action_url."index2.php?page=shop.cart");
	        $text = $VM_LANG->_('PHPSHOP_CART_SHOW');
	        	echo vmCommonHTML::hyperlink( $href, $text, '', $text, $class_att );
			?>
		</td>
    </tr>
    <tr>
        <td colspan="2" class="vmCartModule">
        	<?php //				^ Do not change this class name!! It is used to update this cell after a cart action 
        	// This is the 'mini cart' file
        	include (PAGEPATH.'shop.basket_short.php');
        	?>
		<br />
		<br />
        </td>
    </tr>
        <?php 
} else {
	$_SESSION['vmMiniCart'] = false;
	 
}?>
<?php
// Just for SIMPLEBOARD compatibility !
if (@$_REQUEST['option'] != "com_virtuemart") $db = array();   ?>