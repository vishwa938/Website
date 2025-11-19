<style>
  .parent {
	display: block;
	position: relative;
	float: left;
	line-height: 50px;
	width:9%;
	
}

.parent a {
	margin: 10px;
	text-decoration: none;
  text-transform: uppercase;
    padding: 10px 25px;
    color: #000101;
}

.parent:hover>ul {
	display: block;
	position: absolute;
}

.child {
	display: none;
}

.child li {
	background-color: #ff2d3b;
	line-height: 40px;
	border-bottom: #CCC 1px solid;
	border-right: #CCC 1px solid;
	width: 100%;
  list-style:none;
}

.child li a {
	text-transform: uppercase;
    padding: 10px 25px;
    color: #000101;
  text-decoration:none;
}

</style>
<header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand" href="#" style="background: white;border-radius: 50%;">
            <img src="images/logo.png" width="170" height="85" />
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mr-2">
              <li class="nav-item active">
                <a class="nav-link" href="index.php">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.php">About Us </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="bookclass.php">Book Classes</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="classes.php">Dances</a>
              </li>
              <li class="nav-item parent"><a href="#">Login<span class="expand"></span></a>
		<ul class="child" style="margin-left: -39px;">
			<li><a href="Admin/index.php">Admin</a></li>
		</ul>
	</li>
              

            </ul>
           
          </div>
        </nav>
      </div>
    </header>