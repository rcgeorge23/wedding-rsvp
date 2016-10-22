<#macro nav title>
	
	<nav class="navbar navbar-default"> 
		<div class="navbar-header"> 
			<form class="navbar-form navbar-left"> 
				<button class="btn btn-default" id="showLeft">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</button>
			</form> 	
		</div>
		<a href="#" class="navbar-brand pull-right">${title}</a> 
	</nav>
	
	<div id="leftNav">
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
			<h3>Menu <span class="pull-right" id="closeNav">x</span></h3>
			<a href="/admin">Overview</a>
			<a href="/admin/customise-invitations">Customise Invitations</a>
			<a href="/admin/manage-guests">Manage Guests</a>
			<a href="/admin/send-invitations">Send Invitations</a>
			<a href="/admin/my-profile">My Profile</a>
		</nav>
	</div>
	
	<script>
		var menuLeft = document.getElementById( 'cbp-spmenu-s1' );
	
		showLeft.onclick = function() {
			this.classList.add('active');
			menuLeft.classList.add('cbp-spmenu-open');
		};
		
		closeNav.onclick = function() {
			this.classList.remove('active');
			menuLeft.classList.remove('cbp-spmenu-open');
		};
	</script>
</#macro>