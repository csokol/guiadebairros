<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<!--
	Read Only by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Read Only by HTML5 UP</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.scrollzer.min.js"></script>
		<script src="js/jquery.scrolly.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<script src="/js/jquery.raty.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <link rel="stylesheet" href="/fontello/css/fontello.css">
        <style>
            #wrapper {
                padding: 0;
            }
            #one:before {
                background-image: url("/images/welcome.jpg");
                background-position: center;
            }
            .stars-form label {
                margin: 0;
                font-size: 1.2em;
            }
            .star-field {
                display: inline-block;
                width: 50%;
                padding-left: 3em;
            }
            .location-name {
                padding-left: 3em;
                margin: 1em 0;
            }
            .icon-star-empty {
                color: #d7d7d7;
            }
            .star-field i {
                cursor: pointer;
            }
        </style>
	</head>
	<body>
		<div id="wrapper">

			<!-- Main -->
				<div id="main">

					<!-- One -->
						<section id="one">
							<div class="container">
								<header class="major">
									<h2>Avalie o seu bairro</h2>
								</header>

                                <form class="stars-form" method="post" action="#">
                                    <div class="location-name 6u 12u$(xsmall)">
                                        <input type="text" name="name" value="" placeholder="Bairro" />
                                    </div>
                                    <div data-name="security" class="star-field">
                                        <label>Segurança</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="publicTransportation" class="star-field">
                                        <label>Transporte público</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="traffic"  class="star-field">
                                        <label>Trânsito</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="" class="star-field">
                                        <label>Lazer</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div class="star-field">
                                        <label>Conveniência</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="costOfLife" class="star-field">
                                        <label>Custo de vida</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div>
                                </form>
                            </div>
						</section>

				</div>

			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<ul class="copyright">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</section>

		</div>

    <script>
        var leave = $(".icon-star-empty").mouseenter(function() {
            var star = $(this);
            star.prevAll()
                .filter("i")
                .removeClass("icon-star-empty")
                .addClass("icon-star");
            star.removeClass("icon-star-empty")
                .addClass("icon-star");
        }).mouseleave(function() {
            var star = $(this);
            star.prevAll()
                .filter("i")
                .removeClass("icon-star")
                .addClass("icon-star-empty");
            star.removeClass("icon-star")
                .addClass("icon-star-empty");
        });

        $(".icon-star-empty").click(function() {
            var star = $(this);
            star.prevAll()
                    .filter("i")
                    .removeClass("icon-star-empty")
                    .addClass("icon-star");
            star.removeClass("icon-star-empty")
                    .addClass("icon-star");
            star.parent().find("i").off();
            var stars = star.prevAll()
                    .filter("i");
            var l = stars.length;
            var name = star.parent().data("name");
            star.parent().append($("<input type='hidden'>")
                    .attr("value", l+1)
                    .attr("name", name));
        });
    </script>
	</body>

</html>

