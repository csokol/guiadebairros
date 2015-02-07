<!DOCTYPE HTML>
<!--
Highlights by HTML5 UP
html5up.net | @n33co
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html style="background-image: url('images/overlay.png'), url('images/vila_madalena.jpg');">
<head>
    <title>Vila do Chaves</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.scrollex.min.js"></script>
    <script src="js/jquery.scrolly.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/init.js"></script>
    <script src="js/jquery.raty.js"></script>
    <noscript>
        <link rel="stylesheet" href="css/skel.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-xlarge.css" />
        <link rel="stylesheet" href="css/jquery.raty.css" />
    </noscript>
    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
    <style>
        #header .container.detail {
            width: 80%;
            left: 0;
            margin: 0 auto;
            position: relative;
            top: 60%;
        }
    </style>
</head>
<body>

<!-- Header -->
<section id="header">
    <div class="container detail">
        <header class="major">
            <h1>Vila Madalena</h1>
            <div id="main-rating"></div>
        </header>
	    <div>
	    	Aqui é curintia
	    </div>
    </div>
</section>

<%--<section id="footer">--%>
    <%--<footer>--%>
        <%--<ul class="icons">--%>
            <%--<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>--%>
            <%--<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>--%>
            <%--<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>--%>
            <%--<li><a href="#" class="icon alt fa-dribbble"><span class="label">Dribbble</span></a></li>--%>
            <%--<li><a href="#" class="icon alt fa-envelope"><span class="label">Email</span></a></li>--%>
        <%--</ul>--%>
        <%--<ul class="copyright">--%>
            <%--<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li><li>Demo Images: <a href="http://unsplash.com">Unsplash</a></li>--%>
        <%--</ul>--%>
    <%--</footer>--%>
<%--</section>--%>

<script>
    $(".search-icon").click(function() {
        $("form").submit();
    });
    $('#main-rating').raty({ path: 'images', readOnly: true, score: 3 });
</script>
</body>
</html>