<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
  <% base_tag %>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>

  <!-- Bootstrap -->
  <link href="themes/padua/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
  <link href="themes/padua/assets/css/thirdparty/owl.carousel.min.css" rel="stylesheet">
  <link href="themes/padua/assets/css/custom.css" rel="stylesheet">

  <!-- jQuery library -->
  <script src="themes/padua/assets/js/jquery.min.js"></script>
  <script src="themes/padua/assets/js/bootstrap.min.js"></script>
  <script src="themes/padua/assets/js/owl.carousel.min.js"></script>
  <script src="themes/padua/assets/js/all.min.js"></script>

  <link rel="shortcut icon" href="themes/simple/images/favicon.ico" />
</head>

<body class="bg-eb">
  <% include Header %>


  $Layout
  
  <% include Footer %>
</body>
</html>
