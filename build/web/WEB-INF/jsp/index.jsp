<%@ page pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Tiêu đề</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
        body, html {
            height: 100%;
            color: #777;
            line-height: 1.8;
        }

        /* Create a Parallax Effect */
        .bgimg-1, .bgimg-2, .bgimg-3 {
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* First image (Logo. Full height) */
        .bgimg-1 {
            background-image: url("css/images/tu.jpg");
            min-height: 100%;
        }

        /* Second image (Portfolio) */
        .bgimg-2 {
            background-image: url("css/images/tu2.jpg");
            min-height: 400px;
        }

        /* Third image (Contact) */
        .bgimg-3 {
            background-image: url("css/images/tu2.jpg");
            min-height: 400px;
        }

        .w3-wide {letter-spacing: 10px;}
        .w3-hover-opacity {cursor: pointer;}

        /* Turn off parallax scrolling for tablets and phones */
        @media only screen and (max-device-width: 1024px) {
            .bgimg-1, .bgimg-2, .bgimg-3 {
                background-attachment: scroll;
            }
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <body>          
        <div class="w3-top">
            <div class="w3-bar" id="myNavbar">
                <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
                    <i class="fa fa-bars"></i>
                </a>
                <a href="index.htm" class="w3-bar-item w3-button">Home</a>

                <a href="user/list.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> User List </a>
                
                <a href="user/login.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> Login</a>
                <a href="user/register.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> Register</a>
                <a href="user/change.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> Change password</a>
                <a href="major.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> Major Manager</a> 
                <a href="student.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> Student Manager</a>
                <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
                    <i class="fa fa-search"></i>
                </a>
            </div>
            <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
                <a href="user/list.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">User List</a>
                
                <a href="user/login.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Login</a>
                <a href="user/register.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Register</a>
                <a href="user/change.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Change password</a>
                <a href="major.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">major Manager</a>
                <a href="student.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Student Manager</a>
                <a href="#" class="w3-bar-item w3-button">SEARCH</a>
            </div>
        </div>
        <div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity">Hello<span class="w3-hide-small">To</span> My Word</span>
  </div>
</div>
<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
     <span class="w3-xxlarge w3-text-white w3-wide">CONTACT</span>
  </div>
</div>

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64" id="contact">
  <h3 class="w3-center">WHERE I WORK</h3>
  <p class="w3-center"><em>I'd love your feedback!</em></p>

  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
      <iframe id="googleMap" class="w3-round-large w3-greyscale" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.267084655302!2d106.6802037159566!3d10.790844392311733!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528d35939c66f%3A0xe52e3ed732b15272!2zVHLGsOG7nW5nIENhbyDEkOG6s25nIFRo4buxYyBow6BuaCBGUFQgUG9seXRlY2huaWMgKENTMSk!5e0!3m2!1svi!2s!4v1524075488689" 
              width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
      
    </div>
    <div class="w3-col m8 w3-panel">
      <div class="w3-large w3-margin-bottom">
        <i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Fpt Polytechnic<br>
        <i class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Phone: +84 1687780011<br>
        <i class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Email: tuntps05528@mail.com<br>
      </div>
      <p>Swing by for a cup of <i class="fa fa-coffee"></i>, or leave me a note:</p>
 
        ${message}
        
	<form action="mailer/send.htm" 	method="post">
            <div class="w3-half">
		<p><input class="w3-input w3-border" name="from" placeholder="From"></p>
            </div>
            <div class="w3-half">
		<p><input class="w3-input w3-border" name="to" placeholder="To"></p>
            </div>
            <div class="w3-half">
		<p><input class="w3-input w3-border" name="subject" placeholder="Subject"></p>
                </div>
            <div class="w3-half">
		<p><textarea class="w3-input w3-border" name="body" placeholder="Body" 
                    rows="3" cols="30"></textarea></p>
            </div>
		<button lass="w3-button w3-black w3-right w3-section" type="submit">
                    <i class="fa fa-paper-plane"></i>Send</button>
	</form>
      
      </form>
    </div>
  </div>
</div>

        
        
        
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>
 
<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(10.790872, 106.682391);
  var mapOptions= {
    center:myCenter,
    zoom:20, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
    }
}

// Used to toggle the menu on small screens when clicking on the menu button
function toggleFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
    </body>
</html>
