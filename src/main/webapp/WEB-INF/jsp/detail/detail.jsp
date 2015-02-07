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
									<h2>Vila Madalena</h2>
								</header>
								<p id="main-rating"></p>
								<p>Famosa por seus bares, restaurantes, além da sua vida cultural agitada, a Vila Madalena tem na proximidade com a Avenida Paulista e com a Universidade de São Paulo (USP) todo o potencial de atrair jovens e pessoas que preferem morar perto de onde trabalham ou estudam. De modo geral quem mora aqui não pensa em se mudar. </p>
							</div>
						</section>

					<!-- Two -->
						<section id="two">
							<div class="container">
								<h3>Como vai a quebrada?</h3>
								<ul class="feature-icons">
									<li>Segurança <div id="stars-security"></div></li>
									<li>Transporte público <div id="stars-transport"></div></li>
									<li>Trânsito <div id="stars-traffic"></div></li>
									<li>Lazer <div id="stars-fun"></div></li>
									<li>Conveniência <div id="stars-convenience"></div></li>
									<li>Custo de vida <div id="stars-cost"></div></li>
								</ul>
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
											<p>Sempre sou assaltado, mas mesmo assim gosto do lugar.</p>
										</div>
									</article>
									<article>
										<a href="#" class="image"><img src="images/pic02.jpg" alt="" /></a>
										<div class="inner">
											<h4>Juquinha</h4>
											<p>Bom, mas é ruim ao mesmo tempo.</p>
										</div>
									</article>
									<article>
										<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
										<div class="inner">
											<h4>João</h4>
											<p>EU GOSTO MUITO DESSE LUGAR SOU FELIZ MINHA CASA É LEGAL EU GOSTO DE AÇAI E O GOVERNO NAO AJUDA EBA</p>
										</div>
									</article>
								</div>
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
	</body>

	<script>
    $('#main-rating').raty({ path: '/images', readOnly: true, score: 3 });
    $('#stars-security').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-transport').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-traffic').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-fun').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-convenience').raty({ path: '/images', readOnly: true, score: 4 });
    $('#stars-cost').raty({ path: '/images', readOnly: true, score: 4 });
</script>
</html>

