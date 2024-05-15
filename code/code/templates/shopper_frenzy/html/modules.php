<?php
/**
 * @version		$Id: modules.php 8255 2007-07-30 23:37:23Z jinx $
 * @package		Joomla
 * @copyright	Copyright (C) 2005 - 2007 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

function modChrome_notitle($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div class="moduletable<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php echo $module->content; ?>
		</div>
	<?php endif;
}

function modChrome_rounded_shadow($module, &$params, &$attribs)
{

$suffix = $params->get('moduleclass_sfx');
if ($suffix == "_menu") {
$suffix = "";
}

	if (!empty ($module->content)) : ?>
		<div class="module_shadow_wrap<?php echo $suffix ?>">
		<div class="module_shadow<?php echo $suffix ?>">
		<div>
		<div>
		<div>
			<?php if ($module->showtitle) : ?>
			
			<?php 
			
			$s5_h3 = strpos($module->title," ");
			
			if ($s5_h3 != "") {
			$s5_h3_beginning = substr($module->title, 0, $s5_h3);
			$s5_h3_end = substr($module->title, $s5_h3, 500);
			}
			else {
			$s5_h3_beginning = $module->title;
			$s5_h3_end = "";
			}
			
			?>
			
			<h3 class="s5_grey"><span class="s5_h3_first"><?php echo $s5_h3_beginning ?> </span><?php echo $s5_h3_end ?></h3>
			<?php endif; ?>
			<?php echo $module->content; ?>
		</div>
		</div>
		</div>
		</div>
		<div class="s5_module_shadow_bottom"></div>
		</div>
	<?php endif;
}

?>