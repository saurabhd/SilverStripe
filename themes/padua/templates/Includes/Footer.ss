 <footer class="">
	<div class="bg-black padding-v-30 text-white">
		<div class="container">
			<div class="grid grid-3 padding-h-30">
			  	<div class="col footer-address">
				    <% if $SiteConfig.Title %>
				    	<h3>About $SiteConfig.Title</h3>
				    <% end_if %>
				    <ul class="adress">
				      <% if $SiteConfig.address %>
				      	<li class="icon icon-address">$SiteConfig.address</li>
				      <% end_if %>
				      <% if $SiteConfig.phone %>
				      	<li class="icon icon-phone"><a href="tel:$SiteConfig.phone">$SiteConfig.phone</li>
				      <% end_if %>
				      <% if $SiteConfig.email %>
				      	<li class="icon icon-email"><a href="mailto:$SiteConfig.email">$SiteConfig.email</a></li>
				      <% end_if %>
				      <% if $SiteConfig.clock %>
				      	<li class="icon icon-clock">$SiteConfig.clock</li>
				      <% end_if %>
				    </ul>
				    <ul class="social-icon">
				      <% if $SiteConfig.linkedin %>
				      	<li><a href="$SiteConfig.linkedin" target="_blank" class="icon-linked-in">Linkedin</a></li>
				      <% end_if %>
				      <% if $SiteConfig.facebook %>
				      	<li><a href="$SiteConfig.facebook" target="_blank"  class="icon-fb">Facebook</a></li>
				      <% end_if %>
				      <% if $SiteConfig.twitter %>
				      	<li><a href="$SiteConfig.twitter" target="_blank"  class="icon-twitter">twitter</a></li>
				      <% end_if %>
				    </ul>
			  	</div>

				  <!-- Quick Links Start -->
				  <div class="col footer-menu">
					<% if $QuickLinks %>
						<h3>Quick Links</h3>
				    <ul>
					    <% loop $QuickLinks %>
					        <li><a class="$LinkingMode icon icon-right-arrow" href="$Link">$MenuTitle</a></li>
					    <% end_loop %>
				    </ul>
					<% end_if %>
				  </div>
				  <!-- Quick Links End -->

			  	<!-- Blogs Start -->
			  	<div class="col footer-blog">
			  		<% if false %>
					    <h3>Latest from our blog</h3>
					    <% if $FooterBlogs %>
						    <% loop $FooterBlogs %>
							    <div class="blog-detail">
							      <p><a href="$Link">$Title</a></p>
							      <span class="icon icon-clock">$PublishDate.Ago()</span>
							      <% if $Categories %>
										&nbsp; | &nbsp;
										<span class="icon icon-tag"><% loop $Categories %>
											<a href="$Link">$Title</a>
											<% if $Last %>
											<% else %>,
											<% end_if %>
										<% end_loop %>
										</span>
									<% end_if %>
							    </div>
						    <% end_loop %>
					  	<% end_if %>
				  	<% end_if %>
				</div>
				<!-- Blogs End -->
			</div>
		</div>
	</div>
	<div class="copyright bg-white text-dark-grey">
		$SiteConfig.copyright
	</div>
</footer>