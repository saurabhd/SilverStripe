<div class="content-container unit size3of4 lastUnit careers">
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
				    	<div class="image">$Photo</div>
				    	<h2 class="text-dark-grey">$Title</h2>
					    <div class="content">$Content</div>
						<% if $read_more_title %>
							<a href="$read_more" class="btn bg-dark-grey">$read_more_title</a>
						<% end_if %>
						<% if $read_more_title_2 %>
							<a href="$read_more_2" class="btn bg-dark-grey">$read_more_title_2</a>
						<% end_if %>
				    </div>
		    	<% end_if %>
		    <% end_loop %>
		</div>
		<!-- Home Page Boxes End -->
	</div>
	$Form
	$CommentsForm
</div> <!-- content-container End -->
