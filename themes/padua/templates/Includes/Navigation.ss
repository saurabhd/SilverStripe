<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
</button>
<nav class="navbar navbar-default">
  <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <% loop $Menu(1) %>
        <li><a class="$LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a></li>
      <% end_loop %>
    </ul>
</nav>