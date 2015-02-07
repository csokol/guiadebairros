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
		<script src="/js/jquery.autocomplete.js"></script>
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
            
            .autocomplete-suggestions {
            	background-color: #fff;
            	border: solid 1px;
            }
            
            .autocomplete-suggestion {
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

                                <form class="stars-form" method="post" action="/">
                                    <div id="xablau" class="location-name 6u 12u$(xsmall) ">
                                        <input class="initial-search" type="text" name="name" value="" placeholder="Bairro" />
                                    </div>
                                    <div data-name="evaluation.securityScore" class="star-field">
                                        <label>Segurança</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="evaluation.publicTransportationScore" class="star-field">
                                        <label>Transporte público</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="evaluation.trafficScore"  class="star-field">
                                        <label>Trânsito</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="evaluation.amusementScore" class="star-field">
                                        <label>Lazer</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="evaluation.amenitiesScore" class="star-field">
                                        <label>Conveniência</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div><!--
                                    --><div data-name="evaluation.costOfLifeScore" class="star-field">
                                        <label>Custo de vida</label>
                                        <c:forEach begin="1" end="5">
                                            <i class="icon-star-empty"></i>
                                        </c:forEach>
                                    </div>
                                    
                                    <p>Você se sente seguro andando pelas ruas do bairro?</p>
                                   	<input type="radio" name="evaluation.opinion[FEEL_SAFE]" value="true">Sim</option>
                                   	<input type="radio" name="evaluation.opinion[FEEL_SAFE]" value="false">Não</option>
                                    
                                    <p>Você costuma caminhar pelo bairro?</p>
                                    <input type="radio" name="evaluation.opinion[WALK]" value="true">Sim</option>
                                   	<input type="radio" name="evaluation.opinion[WALK]" value="false">Não</option>
                                    
                                    <p>Você acha o bairro silencioso?</p>
                                    <input type="radio" name="evaluation.opinion[IS_QUIET]" value="true">Sim</option>
                                   	<input type="radio" name="evaluation.opinion[IS_QUIET]" value="false">Não</option>
                                    
                                    <p>Seu bairro é arborizado?</p>
                                    <input type="radio" name="evaluation.opinion[HAS_TREES]" value="true">Sim</option>
                                   	<input type="radio" name="evaluation.opinion[HAS_TREES]" value="false">Não</option>
                                    
                                    <p>Quanto tempo você demora de casa até seu trabalho?</p>
                                    <input type="radio" name="evaluation.opinion[IS_CLEAN]" value="true">Sim</option>
                                   	<input type="radio" name="evaluation.opinion[IS_CLEAN]" value="false">Não</option>
                                    
                                    <p>Você acha o asfalto do seu bairro bem cuidado?</p>
                                    <input type="radio" name="evaluation.opinion[HOW_LONG]" value="true">Sim</option>
                                   	<input type="radio" name="evaluation.opinion[HOW_LONG]" value="false">Não</option>
                                    
                                    <p>Você utiliza o transporte público?</p>
                                    <input type="radio" name="evaluation.opinion[USE_PUBLIC_TRANSPORTATION]" value="true">Sim</option>
                                   	<input type="radio" name="evaluation.opinion[USE_PUBLIC_TRANSPORTATION]" value="false">Não</option>
                                    
                                    <div class="location-name  12u$">
                                        <ul class="actions">
                                            <li><input type="submit" value="Enviar" class="special" /></li>
                                        </ul>
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
    <script src="/js/signup.js"></script>
	</body>

</html>

