<div class="content-container unit size3of4 lastUnit">
	<!-- Banner Slider Start -->
	<div class="banner-wrap">
	    <% loop $Children %>
	    	<% if $ClassName == "PaduaHome\Component\Banners" %>
		    	<div class="item">
		        	$Photo
		        	<div class="container banner-title">
		        		<h1 class="banner-caption">$Title</h1>
		        	</div>
		      	</div>
	    	<% end_if %>
	    <% end_loop %>
	</div>
	<!-- Banner Slider End -->

	<div class="container padding-xs-0">
		<!-- Home Page Boxes Start -->
		<div class="blog-wrap grid grid-2 bg-white">
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
		</div>
		<!-- Home Page Boxes End -->

		<!-- Founders Start -->
		<div class="blog-wrap grid grid-2 bg-white title-center padding-30 padding-b-0 padding-t-10">
			<h2 class="text-dark-grey">THE FOUNDERS</h2>
	    	<% loop $Children %>
	    		<% if $ClassName == "PaduaHome\Component\Founders" %>
	    			<div class="col $css_class padding-h-30 ">
				    	<div class="center-content">
					    	$Photo
					    	<h3>$Title</h3>
					    	$designation	
				    	</div>
				    	<div class="small-content">
				    		$Content	
				    	</div>
				    </div>
		    	<% end_if %>
		    <% end_loop %>
		</div>
		<!-- Founders End -->

		<!-- Management Team Start -->
		<div class="blog-wrap grid grid-3 bg-white padding-30 title-center padding-t-10">
			<h2 class="text-dark-grey">MANAGEMENT TEAM</h2>
	    	<% loop $Children %>
	    		<% if $ClassName == "PaduaHome\Component\ManagementTeam" %>
	    			<div class="col $css_class padding-h-30">
				    	<div class="center-content">
					    	$Photo
					    	<h3>$Title</h3>
					    	$designation	
				    	</div>
				    </div>
		    	<% end_if %>
		    <% end_loop %>
		</div>
		<!-- Management Team End -->

		<!-- Our Staff Start -->
		<% if $OurStaff %>
		<div class="blog-wrap grid grid-4 bg-white title-center padding-h-60">
			<h2 class="text-dark-grey">OUR STAFF</h2>
	    	<% loop $Children %>
	    		<% if $ClassName == "PaduaHome\Component\OurStaff" %>
	    			<div class="col $css_class padding-30 padding-0">
				    	<div class="center-content">
					    	$Photo
					    	<h3>$Title</h3>
					    	$designation	
				    	</div>
				    </div>
		    	<% end_if %>
		    <% end_loop %>
		</div>
		<% end_if %>
		<!-- Our Staff End -->

	</div>
	$Form
	$CommentsForm
</div> <!-- content-container End -->
