<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <style>
            #wrapper {
                padding: 0;
            }
            #one:before {
                background-image: url("/images/vila_madalena.jpg");
            }
            <c:if test="true">
            .blurry-text {
			   color: transparent;
			   text-shadow: 0 0 5px rgba(0,0,0,0.5);
			}
			
			.star-blur {
				filter: blur(3px);
			}
			</c:if>
			#bottom {
			   position:fixed;
			   left:0px;
			   bottom:0px;
			   height:70px;
			   width:100%;
			   background: #f44336;
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
								<p id="main-rating"></p>
								<p>Famosa por seus bares, restaurantes, al�m da sua vida cultural agitada, a Vila Madalena tem na proximidade com a Avenida Paulista e com a Universidade de S�o Paulo (USP) todo o potencial de atrair jovens e pessoas que preferem morar perto de onde trabalham ou estudam. De modo geral quem mora aqui n�o pensa em se mudar. </p>
							</div>
						</section>

					<!-- Two -->
						<section id="two">
							<div class="container">
								<h3>Como vai a quebrada?</h3>
								<ul class="feature-icons">
									<li>Seguran�a <div id="stars-security" class="star-blur"></div></li>
									<li>Transporte p�blico <div id="stars-transport" class="star-blur"></div></li>
									<li>Tr�nsito <div id="stars-traffic" class="star-blur"></div></li>
									<li>Lazer <div id="stars-fun" class="star-blur"></div></li>
									<li>Conveni�ncia <div id="stars-convenience" class="star-blur"></div></li>
									<li>Custo de vida <div id="stars-cost" class="star-blur"></div></li>
								</ul>
							</div>
						</section>
						
						<section id="four">
							<div class="container">
								<h2>Seguran�a</h2>
								<p><strong>46%</strong> das pessoas se sentem seguras andando nas ruas do bairro.</p>
								<h2>Qualidade de vida</h2>
								<p><strong>23%</strong> das pessoas costumam caminhar pelo bairro.</p>
								<p><strong>84%</strong> acham que o bairro � bem arborizado.</p>
								<p><strong>29%</strong> consideram que h� muita sujeira nas ruas.</p>
								<h2>Tr�nsito</h2>
								<p>As pessoas demoram em m�dia <strong>45</strong> minutos para chegar ao trabalho</p>
								<p><strong>57%</strong> acham que o asfalto � bem cuidado no bairro.</p>
								<h2>Transporte p�blico</h2>
								<p><strong>12%</strong> das pessoas utilizam transporte p�blico.</p>
							</div>
						</section>

					<!-- Three -->
						<section id="three">
							<div class="container">
								<h3>O que os truta axa?</h3>
								<div class="features">
									<article>
										<a href="#" class="image"><img src="images/pic01.jpg" alt="" /></a>
										<div class="inner">
											<h4>Juca Chaves</h4>
											<p class="blurry-text">Sempre sou assaltado, mas mesmo assim gosto do lugar.</p>
										</div>
									</article>
									<article>
										<a href="#" class="image"><img src="images/pic02.jpg" alt="" /></a>
										<div class="inner">
											<h4>Juquinha</h4>
											<p class="blurry-text">Bom, mas � ruim ao mesmo tempo.</p>
										</div>
									</article>
									<article>
										<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
										<div class="inner">
											<h4>Jo�o</h4>
											<p class="blurry-text">EU GOSTO MUITO DESSE LUGAR SOU FELIZ MINHA CASA � LEGAL EU GOSTO DE A�AI E O GOVERNO NAO AJUDA EBA</p>
										</div>
									</article>
									<article>
										<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
										<div class="inner">
											<h4>Senhor barriga</h4>
											<p class="blurry-text">Eu sempre sonhava em morar na Vila, mas depois eu vi que � uma m**** quando tem carnaval ou festa na Vila, pq o bairro fica lotado de gente porca mijando pra tudo qto � lado e fica imposs�vel sair ou entrar no bairro. E nos finais de semana o tr�nsito tamb�m fica horr�vel. Eu gosto dos bares pr�ximos, mas viver na Vila � f***.</p>
										</div>
									</article>
									<article>
										<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
										<div class="inner">
											<h4>Seu Madruga</h4>
											<p class="blurry-text">o ruim de morar na vila � que n�o d� para ir a p�, j� que o bairro tem muito morro. ent�o se voce nao mora perto de um ponto de onibus ou do metro, fica muito ruim para ir para outros lugares. fora isso, o bairro eh show</p>
										</div>
									</article>
									<article>
										<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
										<div class="inner">
											<h4>Bruno Diaz</h4>
											<p class="blurry-text">Acho que a Vila Madalena pode melhorar, mas ainda � um dos melhores bairros para morar em S�o Paulo. Eu acho que o tr�nsito � OK e eu moro perto do metr�, ent�o consigo ir para todos os lados bem f�cil. Acho que para todo mundo que quer morar em algum lugar divertido, a Vila Madalena � a melhor op��o. Gra�as a deus eu nunca sofri assalto, ent�o pelo menos tem isso n� </p>
										</div>
									</article>
								</div>
							</div>
						</section>
				</div>

			<!-- Footer -->
			<section id="bottom">
				<div class="container" style="text-align: center; padding: 20px;">
					<a href="/detail/signup" style="font-size: 30px; color: #fff;">Clique aqui para ver as informa��es</a>
				</div>
			</section>
		</div>
	</body>

	<script>
    $('#main-rating').raty({ path: '/images', readOnly: true, score: 3 });
    $('#stars-security').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-transport').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-traffic').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-fun').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-convenience').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-cost').raty({ path: '/images', readOnly: true, score: 4 });
    
    <c:if test="true">
	    $('#stars-security').raty({ path: '/images', readOnly: true, score: 5 });
	    $('#stars-transport').raty({ path: '/images', readOnly: true, score: 5 });
	    $('#stars-traffic').raty({ path: '/images', readOnly: true, score: 5 });
	    $('#stars-fun').raty({ path: '/images', readOnly: true, score: 5 });
	    $('#stars-convenience').raty({ path: '/images', readOnly: true, score: 5 });
	    $('#stars-cost').raty({ path: '/images', readOnly: true, score: 5 });
	</c:if>	    
</script>
</html>

