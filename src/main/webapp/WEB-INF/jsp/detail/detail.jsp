<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE HTML>
<!--
	Read Only by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Avaliação - ${location.name}</title>
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
                background-image: url("${location.imagePath}");
                background-position: center;
            }
            <c:if test="${not canRead}">
            .blurry-text, .blurry-text p {
			   color: transparent;
			   text-shadow: 0 0 8px rgba(0,0,0,0.5);
			}

			.star-blur {
				filter: blur(3px);
			}

            strong {
                color: transparent;
            }
            .feature-icons li {
                color: #888;
                text-shadow: 0 0 0px;
            }
            .feature-icons div {
                color: transparent;
                text-shadow: 0 0 8px rgba(0,0,0,0.5);
            }
			</c:if>
			#bottom {
			   position:fixed;
			   left:0px;
			   bottom:0px;
			   width:100%;
			   background: #f44336;
			}
            .low-score {
                color: #f44336;
            }
            .high-score {
                color: #67f47c;
            }
            .regular-score {
                color: #D0D051;
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
									<h2>${location.name}</h2>
								</header>
                                <tags:stars canRead="true" score="${location.overallScore}"/>
								<p>${location.description}</p>
							</div>
						</section>

					<!-- Two -->
						<section id="two"  class="blurry-text">
							<div class="container">
								<h3>Como vai a quebrada?</h3>
								<ul class="feature-icons">
									<li>
                                        Segurança
                                        <div id="stars-security" class="star-blur">
                                            <tags:stars score="${location.securityScore}"/>
                                        </div>
                                    </li>
									<li>
                                        Transporte público
                                        <div id="stars-transport" class="star-blur">
                                            <tags:stars score="${location.publicTransportationScore}"/>
                                        </div>
                                    </li>
									<li>
                                        Trânsito
                                        <div id="stars-traffic" class="star-blur">
                                            <tags:trafficScore score="${location.trafficScore}"/>
                                        </div>
                                    </li>
									<li>
                                        Lazer
                                        <div id="stars-fun" class="star-blur">
                                            <tags:stars score="${location.amusementScore}"/>
                                        </div>
                                    </li>
									<li>
                                        Conveniência
                                        <div id="stars-convenience" class="star-blur">
                                            <tags:stars score="${location.amenitiesScore}"/>
                                        </div>
                                    </li>
									<li>
                                        Custo de vida
                                        <div id="stars-cost" class="star-blur">
                                            <tags:moneyScore score="${location.costOfLifeScore}"/>
                                        </div>
                                    </li>
								</ul>
							</div>
						</section>
						
						<section  class="blurry-text" id="four">
							<div class="container">
								<h2>Segurança</h2>
								<p><strong>${location.feelSafeRate}%</strong> das pessoas se sentem seguras andando nas ruas do bairro.</p>
								<h2>Qualidade de vida</h2>
								<p><strong>${location.walkRate}%</strong> das pessoas costumam caminhar pelo bairro.</p>
								<p><strong>${location.hasTreesRate}%</strong> acham que o bairro é bem arborizado.</p>
								<p><strong>${location.isCleanRate}%</strong> consideram que há muita sujeira nas ruas.</p>
								<h2>Trânsito</h2>
								<p>As pessoas demoram em média <strong>${location.avgTimeToWork}</strong> minutos para chegar ao trabalho</p>
								<p><strong>${location.goodAsphaltRate}%</strong> acham que o asfalto é bem cuidado no bairro.</p>
								<h2>Transporte público</h2>
								<p><strong>${location.publicTransportationRate}%</strong> das pessoas utilizam transporte público.</p>
							</div>
						</section>

					<!-- Three -->
					
						<c:if test="${not empty comments}">
							<section  class="blurry-text" id="three">
								<div class="container">
									<h3>Comentários sobre o bairro:</h3>
									<div class="features">
										<c:forEach items="${comments}" var="comment">
											<article>
												<div class="inner">
													<h4>${comment.author}</h4>
													<p class="blurry-text">${comment.text}</p>
												</div>
											</article>
										</c:forEach>
									</div>
								</div>
							</section>
							<br/>
							<br/>
						</c:if>
				</div>

			<!-- Footer -->
			<section id="bottom">
				<div class="container" style="text-align: center; padding: 20px;">
					<c:if test="${not canRead}">
					<a href="/detail/signup" style="font-size: 30px; color: #fff;">Avalie um bairro para poder visualizar as informações deste!</a>
					</c:if>
					<c:if test="${canRead}">
					<a href="/detail/signup" style="font-size: 30px; color: #fff;">Avalie outro bairro! =)</a>
					</c:if>					
				</div>
			</section>
		</div>
	</body>

	<script>
    <%--$('#main-rating').raty({ path: '/images', readOnly: true, score: ${location.overallScore} });--%>
    <%--$('#stars-security').raty({ path: '/images', readOnly: true, score: ${location.securityScore} });--%>
    <%--$('#stars-transport').raty({ path: '/images', readOnly: true, score: ${location.publicTransportationScore} });--%>
    <%--$('#stars-traffic').raty({ path: '/images', readOnly: true, score: ${location.trafficScore} });--%>
    <%--$('#stars-fun').raty({ path: '/images', readOnly: true, score: ${location.amusementScore} });--%>
    <%--$('#stars-convenience').raty({ path: '/images', readOnly: true, score: ${location.amenitiesScore} });--%>
    <%--$('#stars-cost').raty({ path: '/images', readOnly: true, score: ${location.costOfLifeScore} });--%>
    
    <c:if test="${not canRead}">
//	    $('#stars-security').raty({ path: '/images', readOnly: true, score: 5 });
//	    $('#stars-transport').raty({ path: '/images', readOnly: true, score: 5 });
//	    $('#stars-traffic').raty({ path: '/images', readOnly: true, score: 5 });
//	    $('#stars-fun').raty({ path: '/images', readOnly: true, score: 5 });
//	    $('#stars-convenience').raty({ path: '/images', readOnly: true, score: 5 });
//	    $('#stars-cost').raty({ path: '/images', readOnly: true, score: 5 });
	</c:if>	    
</script>
</html>

