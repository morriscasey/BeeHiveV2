<div class="row">
	
	<div class="col-xs-12 col-sm-6 col-sm-offset-3">
		<?php echo validation_errors(); ?>
		<?php echo form_open('login/validate_credentials'); ?>
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="email" class="sr-only">Email address</label>
			<input type="email" id="email" name="email" value="<?php echo set_value('email'); ?>" class="form-control" placeholder="Email address">
			
			<button class="beeBtn btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		<?php echo form_close(); ?>
	</div>
</div>