<?php if (!defined('EASY_UPDATES_MANAGER_MAIN_PATH')) die('No direct access allowed'); ?>

<div id="easy-updates-manager-dashnotice" class="updated">
	<?php
	global $pagenow;
	if ( $pagenow === 'index.php' && ! isset( $_GET[ 'page' ]) ) {
		$ajax_action = 'dismiss_dash_notice_until';
		$time = 12;
	} else {
		$ajax_action = 'dismiss_eum_notice_until';
		$time = 3;
	}
	?>
	<div style="float:right;"><a href="#" onclick="jQuery('#easy-updates-manager-dashnotice').slideUp(); jQuery.post(ajaxurl, {action: 'easy_updates_manager_ajax', subaction: '<?php echo esc_js( $ajax_action ); ?>', nonce: '<?php echo wp_create_nonce('easy-updates-manager-ajax-nonce'); ?>' });"><?php printf(__('Dismiss (for %s months)', 'stops-core-theme-and-plugin-updates'), absint( $time ) ); ?></a></div>

	<h3><?php _e("Thank you for installing Easy Updates Manager!", 'stops-core-theme-and-plugin-updates'); ?></h3>
	<?php 
	if ( isset($_GET['page']) && 'mpsum-update-options' === $_GET['page']):
	?>
	<div id="easy-updates-manager-dashnotice-wrapper">
		<p>
			<?php echo htmlspecialchars(__('Super-charge and secure your WordPress site with our other top plugins:', 'stops-core-theme-and-plugin-updates')); ?>
		</p>
		<p>
			<?php printf(__('%s simplifies backups and restoration. It is the world’s highest ranking and most popular scheduled backup plugin, with over a million currently-active installs.', 'stops-core-theme-and-plugin-updates'), '<strong>'.$easy_updates_manager->easy_updates_manager_url('https://updraftplus.com/', 'UpdraftPlus', '', '', true).'</strong>'); ?>
		</p>

		<p>
			<?php printf(__('%s is a highly efficient way to manage, optimize, update and backup multiple websites from one place.', 'stops-core-theme-and-plugin-updates'), '<strong>'.$easy_updates_manager->easy_updates_manager_url('https://updraftplus.com/updraftcentral/', 'UpdraftCentral', '', '', true).'</strong>'); ?>
		</p>
		
		<p>
			<?php printf(__('%s is effective tool for automatically cleaning your WordPress database so that it runs at maximum efficiency.', 'stops-core-theme-and-plugin-updates'), '<strong>'.$easy_updates_manager->easy_updates_manager_url('https://getwpo.com/', __('WP-Optimize', 'stops-core-theme-and-plugin-updates'), '', '', true).'</strong>'); ?>
		</p>
		
		<p>
			<strong><?php $easy_updates_manager->easy_updates_manager_url('https://getkeyy.com/', __('Keyy:', 'stops-core-theme-and-plugin-updates')); ?></strong> <?php echo htmlspecialchars(__('Simple & secure login with a wave of your phone', 'stops-core-theme-and-plugin-updates')); ?>
		</p>

		<p>
			<strong><?php $easy_updates_manager->easy_updates_manager_url('https://metaslider.com', 'MetaSlider');?>: </strong> <?php echo __('Add style and flare easily with beautifully-designed sliders with the #1 WP slider plugin', 'stops-core-theme-and-plugin-updates'); ?>
		</p>
		
		<p>
			<strong><?php $easy_updates_manager->easy_updates_manager_url('https://www.simbahosting.co.uk/s3/shop/', __('Premium WooCommerce extensions', 'stops-core-theme-and-plugin-updates')); ?></strong>
		</p>

	</div>
	<?php
	endif;
	?>
</div>
