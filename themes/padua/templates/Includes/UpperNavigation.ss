<% if $UpperTopLinks %>
	<div class="top-header bg-eb">
		<div class="container">
			<div class="padding-h-30">
				<ul class="pull-right horizontal-menu">
					<li><a class="link" href="https://roma.padua.net.au/Security/login?BackURL=%2Fmain%2F">Login</a></li>
					<% loop $UpperTopLinks %>
			      		<li><a class="$LinkingMode" href="$Link">$MenuTitle</a></li>
			    	<% end_loop %>
				</ul>
			</div>
		</div>
	</div>
<% end_if %>