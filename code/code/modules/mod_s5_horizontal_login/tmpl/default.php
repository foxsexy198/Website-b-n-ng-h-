<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 


$messageyn = $params->def('messageyn', 1);
$message = $params->def('message', 1);
$forgotu = $params->def('forgotu', 1);
$forgotp = $params->def('forgotp', 1);
$name = $params->def('name', 1);
$remember = $params->def('remember', 1);

?>



<?php if($type == 'logout') : ?>
<form id="s5_hl_form" action="index.php" method="post" name="login">
<?php if ($params->get('greeting')) : ?>


	<?php
	if ( $name == "1" ) { ?>

	<?php echo $user->get('name'); ?>

		<?php
	}
	?>		


	<?php
	if ( $name == "0" ) { ?>

	<?php echo $user->get('username'); ?>

		<?php
	}
	?>	


<?php endif; ?>

	<?php
	if ( $messageyn == "1" ) { ?>

<?php echo $message ?>&nbsp;

		<?php
	}
	?>

		<input type="submit" name="Submit" class="button" value="<?php echo JText::_( 'Logout'); ?>" />


	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="logout" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
</form>
<?php else : ?>
<form id="s5_hl_form" action="index.php" method="post" name="login" >

	<?php echo $params->get('pretext'); ?>
		
			<input class="inputbox" name="username" id="s5_username" type="text" alt="<?php echo JText::_( 'Username' ); ?>" size="10" />
			
			<input class="inputbox" type="password" id="s5_password" name="passwd" size="10" alt="<?php echo JText::_( 'Password' ); ?>" />
			
			<?php if ( $remember == "1" ) { ?>
			<input type="checkbox" name="remember" id="mod_login_remember" value="yes" alt="<?php echo JText::_( 'Remember me' ); ?>" />
			&nbsp;<label for="mod_login_remember"><?php echo JText::_( 'Remember me' ); ?></label>&nbsp;&nbsp;
			<?php } ?>


			<input type="submit" name="Submit" class="button" value="<?php echo JText::_( 'LOGIN'); ?>" />&nbsp;

			<a href="<?php echo JRoute::_( 'index.php?option=com_user&view=reset' ); ?>">
				<?php echo $forgotp ?>
			</a>

			<a href="<?php echo JRoute::_( 'index.php?option=com_user&view=remind' ); ?>">
				<?php echo $forgotu ?>
			</a>

	<?php
	$usersConfig = &JComponentHelper::getParams( 'com_users' );
	if ($usersConfig->get('allowUserRegistration')) : ?>

			&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?php echo JRoute::_( 'index.php?option=com_user&task=register' ); ?>">
				<?php echo JText::_('Register'); ?>
			</a>

	<?php endif; ?>

	<?php echo $params->get('posttext'); ?>

	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="login" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
	<input type="hidden" name="<?php echo JUtility::getToken(); ?>" value="1" />
</form>
<?php endif; ?>
