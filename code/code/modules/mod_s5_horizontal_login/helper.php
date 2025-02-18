<?php
/**
* @version		$Id: helper.php 8473 2007-08-20 20:13:58Z jinx $
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

class modLoginHelper4
{
	function getReturnURL($params, $type)
	{
		if($itemid =  $params->get($type)) 
		{
			$url = 'index.php?Itemid='.$itemid;
			$url = JRoute::_($url, false);
		}
		else
		{
			// Redirect to login
			$uri = JFactory::getURI();
			$url = $uri->toString();
		}

		return base64_encode($url);
	}

	function getType()
	{
		$user = & JFactory::getUser();
	    return (!$user->get('guest')) ? 'logout' : 'login';
	}
}