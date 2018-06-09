<div class="content-container unit size3of4 lastUnit $URLSegment">
	<!-- Banner Slider Start -->
	<% if $Banners %>
		<div class="banner-wrap">
		    <% loop $Children %>
		    	<% if $ClassName == "PaduaHome\Component\Banners" %>
			    	<div class="item">
			        	$Photo
			        	<div class="container banner-title">
			        		<div class="banner-caption">$Title</div>
			        	</div>
			      	</div>
		    	<% end_if %>
		    <% end_loop %>
		</div>
	<% end_if %>
	<!-- Banner Slider End -->
	
	<% if $URLSegment != contact-us %>
		<!-- Services Start -->
		<div class="dashboard-home-blog bg-sky text-center padding-30">
			<div class="container">
		    <div class="grid grid-4">
		    	<% loop $Children %>
		    		<% if $ClassName == "PaduaHome\Component\Services" %>
				        <div class="col">
				          <div class="icon-img">
				            $Photo
				          </div>
				          <div class="text-wrap">$Content</div>
				        </div>
		      		<% end_if %>
		      	<% end_loop %>
		    </div>
		  </div>
		</div>
		<!-- Services End -->
	<% end_if %>


	<% if $HomePageBoxes || $Form || $CommentsForm || $Content %>
		<div class="container padding-xs-0">
			
			<div class="blog-wrap grid grid-2 bg-white">
				<% if $HomePageBoxes %>
					<!-- Home Page Boxes Start -->
			    	<% loop $Children %>
			    		<% if $ClassName == "PaduaHome\Component\HomePageBoxes" %>
						    <div class="col $css_class padding-30">
						    	<% if $Photo %>
						    		$Photo
						    	<% else %>
							      <h2 class="text-dark-grey">$Title</h2>
							      $Content
							      <% if $read_more_title %>
							      	<a href="$read_more" class="btn bg-dark-grey">$read_more_title</a>
							      <% end_if %>
							      <% if $read_more_title_2 %>
							      	<a href="$read_more_2" class="btn bg-dark-grey">$read_more_title_2</a>
							      <% end_if %>
							    <% end_if %>
						    </div>
				    	<% end_if %>
				    <% end_loop %>
					<!-- Home Page Boxes End -->
				<% end_if %>

				<% if $Form || $CommentsForm || $Content %>
					<div class="blog-wrap bg-white contact-form">
						<div class="padding-30 form-inner">
							$Form
							$CommentsForm
							$Content
						</div>
					</div>
				<% end_if %>
			</div>
		</div>
	<% end_if %>
		
	<% if $URLSegment != contact-us %>
		<!-- White bg start -->
		<div class="bg-white padding-30">
			<% if 1 %>
				<!-- Tabular Content start -->
				<div class="container padding-xs-0">
					<div class="padding-h-30">
						<% loop $Children %>
				    		<% if $ClassName == "PaduaHome\Component\Table" %>
								<h2 class="text-center upper-table-title">$Title</h2>
								<div class="upper-table-content">$Content</div>
								<div class="table-responsive">$table_content</div>
								
								<div class="below-table-btn text-center">
									<% if $button1_title %>
										<a href="$button1_url" class="btn bg-blue">$button1_title</a>
					    			<% end_if %>
									<% if $button2_title %>
										<a href="$button2_url" class="btn bg-blue btn-mw-150">$button2_title</a>
					    			<% end_if %>
								</div>
					    	<% end_if %>
					    <% end_loop %>
				 	</div>
				</div>
				<!-- Tabular Content End -->
			<% end_if %>
			
			<% if $Testimonials %>
				<!-- Testimonials Start -->
				<div class="container padding-xs-0">
					<div class="text-center testimonial-wrap bg-white">
				    	<% loop $Children %>
				    		<% if $ClassName == "PaduaHome\Component\Testimonials" %>
						      	<div class="col padding-30">
						          <div class="icon-img">
						            $Photo.Fit(242,156)
						          </div>
						          <div class="text-wrap text-blue">
						            <p>$Content</p>
						            <span class="company-name">$Title</span>
						          </div>
						        </div>
					    	<% end_if %>
					    <% end_loop %>
					</div>	
				</div>
				<!-- Testimonials End -->
			<% end_if %>
		</div>
		<!-- White bg end -->
	<% end_if %>
</div>
<!-- content-container End -->