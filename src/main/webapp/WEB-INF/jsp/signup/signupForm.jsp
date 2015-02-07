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
		<title>Nova avaliação</title>
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
            
            input[type="radio"] {
            }
            
            p {
            	margin: 50px 0 5px 0;
            }

            .icon-cab, .icon-money {
                color: #e5e5e5;
            }

            .icon-active {
                color: #777;
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
                                            <i class="icon-cab"></i>
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
                                            <i class="icon-money"></i>
                                        </c:forEach>
                                    </div>
                                    
                                    <p>Você se sente seguro andando pelas ruas do bairro?</p>
	                                   	<input type="radio" name="opinions[0].value" value="true" checked="checked" />
										<label for="opinions[0].value">Sim</label>
										<input type="radio" name="opinions[0].value" value="false" />
										<label for="opinions[0].value">Não</label>
										<input type="hidden" name="opinions[0].subject" value="FEEL_SAFE"/>
									
                                    <p>Você costuma caminhar pelo bairro?</p>
	                                   	<input type="radio" name="opinions[1].value" value="true" checked="checked" />
										<label for="opinions[1].value">Sim</label>
										<input type="radio" name="opinions[1].value" value="false" />
										<label for="opinions[1].value">Não</label>
										<input type="hidden" name="opinions[1].subject" value="WALK"/>
                                    
                                    <p>Você acha o bairro silencioso?</p>
	                                   	<input type="radio" name="opinions[2].value" value="true" checked="checked" />
										<label for="opinions[2].value">Sim</label>
										<input type="radio" name="opinions[2].value" value="false" />
										<label for="opinions[2].value">Não</label>
										<input type="hidden" name="opinions[2].subject" value="IS_QUIET"/>
                                    
                                    <p>Seu bairro é arborizado?</p>
	                                   	<input type="radio" name="opinions[3].value" value="true" checked="checked" />
										<label for="opinions[3].value">Sim</label>
										<input type="radio" name="opinions[3].value" value="false" />
										<label for="opinions[3].value">Não</label>
										<input type="hidden" name="opinions[3].subject" value="HAS_TREES"/>
                                    
                                    <p>Quanto tempo você demora de casa até seu trabalho? (em minutos)</p>
	                                   	<input type="text" name="opinions[4].intValue" value="" style="width:50px;"/>
										<input type="hidden" name="opinions[4].subject" value="TIME_TO_WORK"/>
                                    
                                    <p>Você acha o asfalto do seu bairro bem cuidado?</p>
	                                   	<input type="radio" name="opinions[5].value" value="true" checked="checked" />
										<label for="opinions[5].value">Sim</label>
										<input type="radio" name="opinions[5].value" value="false" />
										<label for="opinions[5].value">Não</label>
										<input type="hidden" name="opinions[5].subject" value="GOOD_ASPHALT"/>
                                    
                                    <p>Você utiliza o transporte público?</p>
	                                   	<input type="radio" name="opinions[6].value" value="true" checked="checked" />
										<label for="opinions[6].value">Sim</label>
										<input type="radio" name="opinions[6].value" value="false" />
										<label for="opinions[6].value">Não</label>
										<input type="hidden" name="opinions[6].subject" value="USE_PUBLIC_TRANSPORTATION"/>
										
                                    <p>Você acha as ruas do seu bairro tem muita sujeira?</p>
	                                   	<input type="radio" name="opinions[7].value" value="true" checked="checked" />
										<label for="opinions[7].value">Sim</label>
										<input type="radio" name="opinions[7].value" value="false" />
										<label for="opinions[7].value">Não</label>
										<input type="hidden" name="opinions[7].subject" value="IS_CLEAN"/>										
                                    
                                    <p>Deseja registrar algum comentário?</p>
                                    <input type="text" name="comment.author" placeholder="Nome" />
	                                <textarea placeholder="Comentário" name="comment.text" ></textarea>
                                    
                                    <br/>
                                    <div class="location-name  12u$" >
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
							<li>&copy; Atoji/Bronx/Chico/Renato.</li>
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


        var leave = $(".icon-cab, .icon-money").mouseenter(function() {
            var star = $(this);
            var previous = star.prevAll();

            previous.filter("i")
                    .css("color", "none")
                    .removeClass("icon-inactive")
                    .addClass("icon-active");
            star.removeClass("icon-inactive")
                    .css("color", "none")
                    .addClass("icon-active");
            if (previous.length > 3) {
                previous.filter("i").css("color", "#f44336");
                star.css("color", "#f44336");
            } else if (previous.length >= 3) {
                previous.filter("i").css("color", "#D0D051");
                star.css("color", "#D0D051");
            } else if (previous.length <= 2) {
                previous.filter("i").css("color", "#67f47c");
                star.css("color", "#67f47c");
            }
        }).mouseleave(function() {
            var star = $(this);
            star.prevAll()
                    .filter("i")
                    .css("color", "#e5e5e5")
                    .removeClass("icon-active")
                    .addClass("icon-inactive");
            star.removeClass("icon-active")
                    .css("color", "#e5e5e5")
                    .addClass("icon-inactive");
        });

        $(".icon-cab, .icon-money").click(function() {
            var star = $(this);
            var previous = star.prevAll();

            previous.filter("i")
                    .css("color", "none")
                    .removeClass("icon-inactive")
                    .addClass("icon-active");
            star.removeClass("icon-inactive")
                    .css("color", "none")
                    .addClass("icon-active");
            if (previous.length > 3) {
                previous.filter("i").css("color", "#f44336");
                star.css("color", "#f44336");
            } else if (previous.length >= 3) {
                previous.filter("i").css("color", "#D0D051");
                star.css("color", "#D0D051");
            } else if (previous.length < 2) {
                previous.filter("i").css("color", "#67f47c");
                star.css("color", "#67f47c");
            }
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

