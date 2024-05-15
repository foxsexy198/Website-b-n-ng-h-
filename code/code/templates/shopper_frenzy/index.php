<?php
defined( '_JEXEC' ) or die( 'Restricted index access' );
define( 'TEMPLATEPATH', dirname(__FILE__) );
/*
-----------------------------------------
Shopper Frenzy - April 2009 Shape 5 Club Template
-----------------------------------------
Site:      www.shape5.com
Email:     contact@shape5.com
@license:  Copyrighted Commercial Software
@copyright (C) 2009 Shape 5

*/

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />

<?php

//
///////////////////////////////////////////////////////////////////////////////////////


		$s5_style = $this->params->get ("xml_s5_style");
		$_SESSION['s5_style'] = $s5_style;		

		$s5_body_width = $this->params->get ("xml_s5_body_width");

		$s5_left_width = $this->params->get ("xml_s5_left_width");
		
		$s5_inset_width = $this->params->get ("xml_s5_inset_width");
		
		$s5_menu = $this->params->get ("xml_s5_menu");    

		$s5_lytebox = $this->params->get ("xml_s5_lytebox");  

		$s5_tooltips = $this->params->get ("xml_s5_tooltips");  
		
		$s5_show_frontpage = $this->params->get ("xml_s5_frontpage");  
		
		$s5_closed_text = $this->params->get ("xml_s5_closed_text");  

        $s5_open_text = $this->params->get ("xml_s5_open_text"); 

        $s5_user_speed = $this->params->get ("xml_s5_user_speed"); 	
		


// It is recommended that you do not edit below this line.
///////////////////////////////////////////////////////////////////////////////////////


if (($s5_menu  == "1") || ($s5_menu  == "3")){ 
require( TEMPLATEPATH.DS."s5_no_moo_menu.php");
}
else if ($s5_menu  == "2")  {
require( TEMPLATEPATH.DS."s5_suckerfish.php");
}
$menu_name = $this->params->get ("xml_menuname");
$LiveSiteUrl = JURI::base();

$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.

$browser = "other";

if(ereg("msie 6", $br)) {
$browser = "ie6";
} 

else if(ereg("msie 7", $br)) {
$browser = "ie7";
} 

else if(ereg("msie 8", $br)) {
$browser = "ie8";
} 

// Module size calculations

if(!$this->countModules('left')) {
$s5_left_width = "0";	
}

if(!$this->countModules('inset')) {
$s5_inset_width = "0";	
}

if ($this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="24.9%"; }
else if (!$this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="33.3%"; }
else if ($this->countModules("bottom_row_1") && !$this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="33.3%"; }
else if ($this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && !$this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="33.3%"; }
else if ($this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && !$this->countModules("bottom_row_4")) { $bot_row="33.3%"; }
else if (!$this->countModules("bottom_row_1") && !$this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="49.9%"; }
else if (!$this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && !$this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="49.9%"; }
else if (!$this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && !$this->countModules("bottom_row_4")) { $bot_row="49.9%"; }
else if ($this->countModules("bottom_row_1") && !$this->countModules("bottom_row_2") && !$this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="49.9%"; }
else if ($this->countModules("bottom_row_1") && !$this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && !$this->countModules("bottom_row_4")) { $bot_row="49.9%"; }
else if ($this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && !$this->countModules("bottom_row_3") && !$this->countModules("bottom_row_4")) { $bot_row="49.9%"; }
else if (!$this->countModules("bottom_row_1") && !$this->countModules("bottom_row_2") && !$this->countModules("bottom_row_3") && $this->countModules("bottom_row_4")) { $bot_row="100%"; }
else if (!$this->countModules("bottom_row_1") && $this->countModules("bottom_row_2") && !$this->countModules("bottom_row_3") && !$this->countModules("bottom_row_4")) { $bot_row="100%"; }
else if (!$this->countModules("bottom_row_1") && !$this->countModules("bottom_row_2") && $this->countModules("bottom_row_3") && !$this->countModules("bottom_row_4")) { $bot_row="100%"; }
else if ($this->countModules("bottom_row_1") && !$this->countModules("bottom_row_2") && !$this->countModules("bottom_row_3") && !$this->countModules("bottom_row_4")) { $bot_row="100%"; }

if ($this->countModules("drop_down_1") && $this->countModules("drop_down_2")  && $this->countModules("drop_down_3")) { $rowdd="33.3%"; }
else if ($this->countModules("drop_down_1") && $this->countModules("drop_down_2") && !$this->countModules("drop_down_3")) { $rowdd="49.9%"; }
else if ($this->countModules("drop_down_1") && !$this->countModules("drop_down_2") && $this->countModules("drop_down_3")) { $rowdd="49.9%"; }
else if (!$this->countModules("drop_down_1") && $this->countModules("drop_down_2") && $this->countModules("drop_down_3")) { $rowdd="49.9%"; }
else if ($this->countModules("drop_down_1") && !$this->countModules("drop_down_2") && !$this->countModules("drop_down_3")) { $rowdd="100%"; }
else if (!$this->countModules("drop_down_1") && $this->countModules("drop_down_2") && !$this->countModules("drop_down_3")) { $rowdd="100%"; }
else if (!$this->countModules("drop_down_1") && !$this->countModules("drop_down_2") && $this->countModules("drop_down_3")) { $rowdd="100%"; }

?>

<meta http-equiv="Content-Type" content="text/html; <?php echo _ISO; ?>" />
<meta http-equiv="Content-Style-Type" content="text/css" />

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />

<link href="<?php echo $this->baseurl ?>/templates/shopper_frenzy/css/template_css.css" rel="stylesheet" type="text/css" media="screen" />

<link href="<?php echo $this->baseurl ?>/templates/shopper_frenzy/css/s5_suckerfish.css" rel="stylesheet" type="text/css" media="screen" />

<link href="<?php echo $this->baseurl ?>/templates/shopper_frenzy/css/editor.css" rel="stylesheet" type="text/css" media="screen" />

<link href="<?php echo $this->baseurl ?>/templates/shopper_frenzy/css/<?php echo $s5_style ?>.css" rel="stylesheet" type="text/css" media="screen" />

<link href="/shopper_frenzy/templates/shopper_frenzy/favicon.ico" rel="shortcut icon" type="image/x-icon" />



<?php 
  $s5_domain = $_SERVER['HTTP_HOST']; $s5_path = $_SERVER['SCRIPT_NAME']; $s5_queryString = $_SERVER['QUERY_STRING']; $s5_url = "http://" . $s5_domain . $_SERVER['REQUEST_URI']; $s5_check_vm = strrpos($s5_url,"virtuemart");
  if ($s5_lytebox  == "yes") { 
  if ($s5_check_vm == "") {
?>
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/shopper_frenzy/css/lytebox.css" type="text/css" media="screen" />
		<script type="text/javascript" language="javascript" src="<?php echo $this->baseurl ?>/templates/shopper_frenzy/js/lytebox.js"></script>
<?php } } ?>


<?php if($browser == "ie6" || $browser == "ie7" && $s5_menu != "4") { ?>

<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shopper_frenzy/js/IEsuckerfish.js"></script>

<?php } ?>

<style type="text/css"> 

<?php if ($browser == "ie6" || $browser == "ie7") { ?>

#s5_vc_form .button {
padding-left:0px;
padding-right:0px;
}

.button, .button-none {
padding-left:4px;
padding-right: 3px;
padding-top:4px;
font-size:11px;
}

#s5_vm_search_button {
padding-left:3px;
padding-right:4px;
}

#s5_vm_search_button_middle {
float:none;
}

#s5_middle_wrapper {
margin-bottom:-20px;
}

<?php } ?>

<?php if ($browser == "ie8") { ?>

.button, .button-none {
font-size:11px;
padding-top:5px;
}

<?php } ?>

<?php if ($browser == "ie6") { ?>

#s5_vm_search_button_middle {
margin-right:7px;
}

* html #s5_tl_shadow {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_tl_shadow.png', sizingmethod='crop');}
}

* html #s5_tr_shadow {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_tr_shadow.png', sizingmethod='crop');}
}

* html #s5_tl_corner {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_tl_corner.png', sizingmethod='crop');}
}

* html #s5_tr_corner {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_tr_corner.png', sizingmethod='crop');}
}

* html #s5_t_repeat {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_top_shadow.png', sizingmethod='scale');}
}

* html #s5_bl_corner {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_bl_corner.png', sizingmethod='crop');}
}

* html #s5_br_corner {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_br_corner.png', sizingmethod='crop');}
}

* html #s5_bot_shadow {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_bot_shadow.png', sizingmethod='scale');}
}

* html #s5_drop_down_tab {
    background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_tab.png', sizingmethod='crop');}
}

* html #s5_drop_down2 {
	 filter: alpha(opacity=90);
	 background:url(<?php echo $this->baseurl ?>/templates/shopper_frenzy/images/s5_drop_bg.gif) repeat-x bottom center;
}

<?php } ?>

<?php if($this->countModules('bottom_row_1') || $this->countModules('bottom_row_2') || $this->countModules('bottom_row_3') || $this->countModules('bottom_row_4')) { ?>

#s5_middle_wrapper {
margin-bottom:20px;
}

* html #s5_middle_wrapper {
margin-bottom:10px;
}

<?php } ?>

<?php if($this->countModules('drop_down_1') || $this->countModules('drop_down_2') || $this->countModules('drop_down_3')) { ?>

#s5_top_wrap {
padding-top:10px;
}

<?php } ?>

</style> 

</head>

<body id="s5_body">

	<div id="s5_outer_wrap">
	
		<div id="s5_top_wrap" style="width:<?php echo $s5_body_width + 34 ?>px">
		
			<div id="s5_tl_shadow"></div>
			
			<div id="s5_t_middle" style="width:<?php echo $s5_body_width ?>px">
			
				<div id="s5_tl_corner"></div>
				
				<div id="s5_t_repeat" style="width:<?php echo $s5_body_width - 38 ?>px"></div>
				
				<div id="s5_tr_corner"></div>
				
				<div style="clear:both"></div>
			
				<div id="s5_header_wrap" style="width:<?php echo $s5_body_width - 16 ?>px">
				
					<div id="s5_header_inner" style="width:<?php echo $s5_body_width - 16 ?>px">
					
						<div id="s5_header_inner2" style="width:<?php echo $s5_body_width - 16 ?>px">
						
							<?php if($this->countModules('cart')) { ?>
						
								<div id="s5_cart">
								
									<jdoc:include type="modules" name="cart" style="notitle" />
																	
								</div>
								
							<?php } ?>
					
						</div>
					
					</div>
				
				</div>
				
				<div id="s5_main_body_outer" style="width:<?php echo $s5_body_width - 46 ?>px">
				
					<div id="s5_main_body_inner" style="width:<?php echo $s5_body_width - 46 ?>px">
					
						<?php if ($s5_menu  != "4") { ?>
					
							<div id="s5_menu"<?php if($this->countModules('sub_menu')) { ?> style="border:none"<?php } ?>>
							
								<div id="s5_menu_tl"></div>
			
								<div id="s5_navv">
								
									<?php mosShowListMenu($menu_name);	?>
									<?php if ($s5_menu  == "1") { ?>
										<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shopper_frenzy/js/s5_no_moo_menu.js"></script>																		
									<?php } ?>
									<?php if ($s5_menu  == "3") { ?>
										<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shopper_frenzy/js/s5_fading_no_moo_menu.js"></script>																		
									<?php } ?>	
									<?php if ($s5_menu  == "2") { ?>
										<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shopper_frenzy/js/s5_suckerfish.js"></script>																		
									<?php } ?>	
								
								</div>
								
								<div id="s5_menu_tr"></div>
							
							<div style="clear:both"></div>
							
							</div>
							
							<?php if($this->countModules('sub_menu')) { ?>
									
								<div id="s5_sub_menu">
					
									<jdoc:include type="modules" name="sub_menu" style="notitle" />
									<div style="clear:both"></div>
										
								</div>
										
							<?php } ?>
							
							<div id="s5_menu_bottom_wrap"<?php if(!$this->countModules('under_menu_left') && !$this->countModules('under_menu_right')) { ?> style="height:25px"<?php } ?>>
							
								<div id="s5_menu_bottom_left"<?php if(!$this->countModules('under_menu_left') && !$this->countModules('under_menu_right')) { ?> style="height:25px"<?php } ?>>
								
									<div id="s5_menu_bottom_right"<?php if(!$this->countModules('under_menu_left') && !$this->countModules('under_menu_right')) { ?> style="height:25px; padding:0px"<?php } ?>>
									
										<?php if($this->countModules('under_menu_left')) { ?>
										
											<div id="s5_under_menu_left">
										
												<jdoc:include type="modules" name="under_menu_left" style="notitle" />
												
											</div>
											
										<?php } ?>
										
										<?php if($this->countModules('under_menu_right')) { ?>
										
											<div id="s5_under_menu_right">
										
												<jdoc:include type="modules" name="under_menu_right" style="notitle" />
												
											</div>
											
										<?php } ?>

									</div>

								</div>

							</div>
							
							<div class="s5_large_shadow"></div>
						
						<?php } ?>
						
						<?php if($this->countModules('breadcrumb') || $this->countModules('search')) { ?>
						
							<div id="s5_lower_row_wrap">
							
								<div id="s5_lower_row_left">
								
									<div id="s5_lower_row_right">
									
										<?php if($this->countModules('breadcrumb')) { ?>
									
											<div id="s5_breadcrumb">
											
											<div id="s5_homeicon" onclick="window.document.location.href='index.php'"></div>
								
												<jdoc:include type="modules" name="breadcrumb" style="notitle" />
													
											</div>
													
										<?php } ?>
										
										<?php if($this->countModules('search')) { ?>
									
											<div id="s5_search">
								
												<jdoc:include type="modules" name="search" style="notitle" />
													
											</div>
													
										<?php } ?>
							
									</div>
							
								</div>
							
							</div>
							
							<div class="s5_large_shadow"></div>
						
						<?php } ?>
						
						<div id="s5_middle_wrapper"<?php if($s5_menu == "4" && !$this->countModules('search') && !$this->countModules('breadcrumb')) { ?> style="margin-top:0px"<?php } ?>>
					
							<?php if($this->countModules('left')) { ?>
						
								<div id="s5_left" style="width:<?php echo $s5_left_width ?>px">
								
									<div id="s5_left_inner">
									
										<jdoc:include type="modules" name="left" style="rounded_shadow" />
								
									</div>
								
								</div>
								
							<?php } ?>
								
								<div id="s5_right" style="width:<?php echo $s5_body_width - $s5_left_width - 46 ?>px">
								
									<?php if($this->countModules('above_body_1')) { ?>
									
										<div id="s5_right_above_body">
										
											<jdoc:include type="modules" name="above_body_1" style="rounded_shadow" />

										</div>	
										
									<?php } ?>
									
									<?php if($this->countModules('above_body_2')) { ?>
									
										<div id="s5_right_above_body2" style="width:<?php echo ($s5_body_width - $s5_left_width - 46)/2 ?>px">
										
											<div id="s5_right_above_body2_inner">
										
												<jdoc:include type="modules" name="above_body_2" style="rounded_shadow" />
												
											</div>

										</div>	
										
									<?php } ?>
									
									<?php if($this->countModules('above_body_3')) { ?>
									
										<div id="s5_right_above_body3" style="width:<?php echo ($s5_body_width - $s5_left_width - 46)/2 ?>px">
										
											<div id="s5_right_above_body3_inner">
										
												<jdoc:include type="modules" name="above_body_3" style="rounded_shadow" />
												
											</div>

										</div>	
										
									<?php } ?>
									
									<?php 
									$s5_frontpage = "yes"; 
									$s5_current_page = ""; 
									if (JRequest::getVar('view') == "frontpage") {
										$s5_current_page = "frontpage";
									}
									if (JRequest::getVar('view') != "frontpage") {
										$s5_current_page = "not_frontpage";
									}
									if ($s5_show_frontpage == "no" && $s5_current_page == "frontpage") {
										$s5_frontpage = "no";
									}
									$s5_check_frontpage = strrpos($s5_url,"index.php");
									if ($s5_check_frontpage > 1) {
										$s5_frontpage = "not_frontpage";
									} ?>
									
									<?php if ($s5_frontpage != "no") { ?>
										
										<div id="s5_main_body_shadow">
										<div id="s5_main_body" style="width:<?php echo $s5_body_width - $s5_left_width - $s5_inset_width - 46 ?>px">
										<div id="s5_main_body2">
										<div id="s5_main_body3">
										<div id="s5_main_body4">
											
											<jdoc:include type="message" />
											<jdoc:include type="component" />
											
										</div>	
										</div>	
										</div>	
										</div>	
										</div>
										
										<?php if($this->countModules('inset')) { ?>
							
											<div id="s5_inset" style="width:<?php echo $s5_inset_width ?>px">
											
												<div id="s5_inset_inner">
												
													<jdoc:include type="modules" name="inset" style="rounded_shadow" />
											
												</div>
											
											</div>
											
										<?php } ?>
										
									<?php } ?>
									
									<div style="clear:both"></div>
									
									<?php if($this->countModules('below_body_1')) { ?>
									
										<div id="s5_right_below_body">
										
											<jdoc:include type="modules" name="below_body_1" style="rounded_shadow" />

										</div>	
										
									<?php } ?>
									
									<?php if($this->countModules('below_body_2')) { ?>
									
										<div id="s5_right_below_body2" style="width:<?php echo ($s5_body_width - $s5_left_width - 46)/2 ?>px">
										
											<div id="s5_right_below_body2_inner">
										
												<jdoc:include type="modules" name="below_body_2" style="rounded_shadow" />
												
											</div>

										</div>	
										
									<?php } ?>
									
									<?php if($this->countModules('below_body_3')) { ?>
									
										<div id="s5_right_below_body3" style="width:<?php echo ($s5_body_width - $s5_left_width - 46)/2 ?>px">
										
											<div id="s5_right_below_body3_inner">
										
												<jdoc:include type="modules" name="below_body_3" style="rounded_shadow" />
												
											</div>

										</div>	
										
									<?php } ?>
								
								</div>
								
							<div style="clear:both"></div>
						
						</div>
				
					</div>

				</div>
			
			</div>
			
			<div id="s5_tr_shadow"></div>
			
			<div style="clear:both"></div>
			
		</div>
		
	<div style="clear:both"></div>
	
	<?php if($this->countModules('bottom_row_1') || $this->countModules('bottom_row_2') || $this->countModules('bottom_row_3') || $this->countModules('bottom_row_4')) { ?>
	
		<div id="s5_bottom_row_wrap" style="width:<?php echo $s5_body_width -14 ?>px">
		
			<div id="s5_bottom_row_1">
			
				<div id="s5_bottom_row_2">
				
					<div id="s5_bottom_row_3">
					
						<div id="s5_bottom_row_4">
						
							<div id="s5_bottom_row_5">
							
									<?php if($this->countModules('bottom_row_1')) { ?>
									<div id="s5_bottom_row_1_mod" style="width:<?php echo $bot_row ?>">
									<div id="s5_bottom_row_1_inner_mod"<?php if($this->countModules('bottom_row_2') || $this->countModules('bottom_row_3') || $this->countModules('bottom_row_4')) { ?> style="padding-right:15px"<?php } ?>>
										<jdoc:include type="modules" name="bottom_row_1" style="rounded" />
									</div>
									</div>
									<?php } ?> 
									<?php if($this->countModules('bottom_row_2')) { ?>
									<div id="s5_bottom_row_2_mod" style="width:<?php echo $bot_row ?>">
									<div id="s5_bottom_row_2_inner_mod"<?php if($this->countModules('bottom_row_3') || $this->countModules('bottom_row_4')) { ?> style="padding-right:15px"<?php } ?>>
										<jdoc:include type="modules" name="bottom_row_2" style="rounded" />
										<div style="clear:both"></div>
									</div>
									</div>
									<?php } ?> 
									<?php if($this->countModules('bottom_row_3')) { ?>
									<div id="s5_bottom_row_3_mod" style="width:<?php echo $bot_row ?>">
									<div id="s5_bottom_row_3_inner_mod"<?php if($this->countModules('bottom_row_4')) { ?> style="padding-right:15px"<?php } ?>>
										<jdoc:include type="modules" name="bottom_row_3" style="rounded" />
										<div style="clear:both"></div>
									</div>
									</div>
									<?php } ?> 
									<?php if($this->countModules('bottom_row_4')) { ?>
									<div id="s5_bottom_row_4_mod" style="width:<?php echo $bot_row ?>">
									<div id="s5_bottom_row_4_inner_mod">
										<jdoc:include type="modules" name="bottom_row_4" style="rounded" />
										<div style="clear:both"></div>
									</div>
									</div>
									<?php } ?> 
									
									<div style="clear:both"></div>
							
							</div>
					
						</div>
						
					</div>
			
				</div>
			
			</div>
		
		</div>
		
		<div class="s5_large_shadow" style="width:<?php echo $s5_body_width - 36 ?>px"></div>
		
	<?php } ?> 
	
	<div id="s5_bottom_wrap" style="width:<?php echo $s5_body_width + 34 ?>px">
	
		<div id="s5_bl_corner"></div>
		
		<div id="s5_bot_gradient" style="width:<?php echo $s5_body_width - 36 ?>px">
		
			<div id="s5_footer_middle">
			
				<div id="s5_footer_left">
				
					<div id="s5_footer_right">
					
						<div id="s5_footer_text">
						<?php include("templates/shopper_frenzy/footer.php"); ?>
						</div>
						<div id="s5_bottom_pos">
						<jdoc:include type="modules" name="bottom_menu" style="notitle" />
						</div>
			
					</div>
			
				</div>
			
			</div>
			
			<div style="clear:both"></div>
			
			<div id="s5_footer_shadow"></div>
		
		</div>
		
		<div id="s5_br_corner"></div>
		
		<div style="clear:both"></div>
	
	</div>
	
	<div id="s5_bot_shadow" style="width:<?php echo $s5_body_width - 36 ?>px">

	</div>
	
	
	
	<?php if ($s5_tooltips  == "yes") { ?>
	<script type="text/javascript" language="javascript" src="<?php echo $this->baseurl ?>/templates/shopper_frenzy/js/tooltips.js"></script>
	<?php } ?>
	
	<?php if($this->countModules('debug')) { ?>
			<jdoc:include type="modules" name="debug" style="xhtml" />
	<?php } ?>
	
	<?php if($this->countModules('drop_down_1') || $this->countModules('drop_down_2') || $this->countModules('drop_down_3')) { ?> 

		<div id="s5_drop_down2">
		</div>

		<div id="s5_drop_down" <?php if ($browser == "ie7" || $browser == "ie6") { ?>style="padding-bottom:7px;"<?php } ?><?php if ($browser != "ie7" && $browser != "ie6") { ?>style="padding-bottom:20px;"<?php } ?>>

		<div style="padding-left:30px; padding-right: 30px;">
						  
				  <?php if ($this->countModules("drop_down_1")) { ?><div style="width:<?php echo $rowdd; ?>; float: left;"><div class="rowpadding"><jdoc:include type="modules" name="drop_down_1" style="xhtml" /></div></div><?php } ?>

				  <?php if ($this->countModules("drop_down_2")) { ?><div style="width:<?php echo $rowdd; ?>; float: left;"><div class="rowpadding"><jdoc:include type="modules" name="drop_down_2" style="xhtml" /></div></div><?php } ?>

				  <?php if ($this->countModules("drop_down_3")) { ?><div style="width:<?php echo $rowdd; ?>; float: left;"><div class="rowpadding"><jdoc:include type="modules" name="drop_down_3" style="xhtml" /></div></div><?php } ?>

		<div class="clr"></div>

		</div>

		</div>

		<div id="s5_drop_down_tab" onclick="s5_sf_tab()">

		<div id="s5_open" style="margin-left: -0.1px"><?php echo $s5_closed_text; ?></div>

		<div id="s5_closed" style="margin-left: -0.1px"><?php echo $s5_open_text; ?></div>

		</div>

		<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/shopper_frenzy/js/s5_effects.js"></script>

		<script type="text/javascript">

		<?php if ($browser != "ie6" && $browser != "ie7") { ?>
		document.getElementById("s5_drop_down").style.height = document.getElementById("s5_drop_down").offsetHeight - 40 + 'px';
		<?php } ?> 
		<?php if ($browser == "ie6" || $browser == "ie7") { ?>
		document.getElementById("s5_drop_down").style.height = document.getElementById("s5_drop_down").offsetHeight - 27 + 'px';
		<?php } ?> 
		document.getElementById("s5_drop_down2").style.height = document.getElementById("s5_drop_down2").offsetHeight + 'px';
		document.getElementById("s5_drop_down").style.overflow = 'hidden';
		document.getElementById("s5_drop_down2").style.overflow = 'hidden';

		var s5_sf_dd_top = s5_sf_drop_down_top;
		var s5_sf_tab_top = -2;
		var s5_sf_dd_height = s5_sf_drop_down_height;
		var s5_sf_user_speed = <?php echo $s5_user_speed; ?>;
		var s5_sf_user_speed_holder = <?php echo $s5_user_speed; ?>;
		var s5_sf_dd_holder = s5_sf_dd_top;
		var s5_sf_tab_set = s5_sf_dd_height - 1;

		</script>

	<?php } ?>  
	
	</div>
	
	<div style="height:17px"></div>

</body>

</html>