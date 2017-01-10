<template>
	<div id="state-index">
		<!-- cabecera es un componente que esta en la carpeta components-->
		<cabecera></cabecera>

		<!-- redes sociales -->
		<div class="redes_sociales">
			<div v-for="red in redes_sociales">
				<a :class="['redes',red.title]" :href="red.url" target="_blank">
					<i :class="['fa',red.icon]"></i>
				</a>
			</div>
		</div>

		<!-- cuerpo -->
		<div class="body">
			<div class="container cont-body">
				<transition>
					<router-view></router-view>
				</transition>
			</div>
		</div>


		<!-- pie de pagina -->
		<footer>
			<div class="container textofooter">
				<div class="row">
					<div class="col-md-6">
						<img src="static/img/logo.png" height="50" alt="">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aperiam excepturi culpa esse est laborum rem voluptatem cum expedita iusto aliquam quaerat doloremque voluptatibus voluptas soluta dolore, ducimus, nisi et.</p>
					</div>
					<div class="col-md-2 col-xs-6" v-for="item in items">
						<div v-for="texto in item">
							<h5><b>{{texto.titulo}}</b></h5>
							<ul>
								<li><a href="#">{{texto.link}}</a></li>
							</ul>
						</div>
					</div>
				</div>
				<br>
			</div>
			<div class="division"></div>
			<div class="redesfooter">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<div class="footercopy">© JuegAdictos™ Copyright 2017</div>					
						</div>
						<div class="col-md-4 iconsfooter" align="right">
							<i class="fa fa-facebook"></i>							
							<i class="fa fa-instagram"></i>							
							<i class="fa fa-youtube-play"></i>							
							<i class="fa fa-twitter"></i>							
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
</template>

<script>
	export default {
		data () {
			return{
				redes_sociales:[
					{icon:'fa-facebook', title:'facebook', url:'https://www.facebook.com/'},
					{icon:'fa-instagram', title:'instagram', url:'https://www.instagram.com/'},
					{icon:'fa-youtube-play', title:'youtube', url:'https://www.youtube.com/'},
					{icon:'fa-twitter', title:'twitter', url:'https://www.twitter.com/'}
				],

				// links footer
				items:[
					[
						{titulo:'SECCIONES'},
						{link:'Inicio'},
						{link:'Xbox One'},
						{link:'Playstation 4'},
						{link:'PC'},
						{link:'Trailers'},
						{link:'Articulos'},
						{link:'Trucos'}
					],
					[
						{titulo:'ENLACES'},
						{link:'Resident Evil VII'},
						{link:'GTA V'},
						{link:'FIFA 17'},
						{link:'Battlefield 1'},
						{link:'Overwatch'}
					],
					[
						{titulo:'COMUNIDAD'},
						{link:'Contacto'},
						{link:'Colabora'},
						{link:'Redacción'},
						{link:'Foros'}
					]
				]
			}
		},

		methods:{
			closeMenu(){
				var menu =  document.getElementById('menu');
				menu.style.left = '-250px';
			}
		}
	}	
</script>

<style lang="scss" scoped>
	#state-index{
		.cont-body{
			background: #fff;
			padding: 10px;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}

		.redes_sociales{
			left: 0;
			top: 100px;
			width: 60px;
			position: fixed;		
			.redes{
				margin: 5px;
				color: #fff;
				width: 40px;
				height: 40px;
				padding: 10px;
				display: block;
				font-size: 19px;
				background: #ddd;
				line-height: 22px;
				text-align: center;
				border-radius: 100%;
				text-decoration: none;
				-webkit-transition: all 0.3s;
				-o-transition: all 0.3s;
				transition: all 0.3s;
			}
			.redes:hover{
				background:#fff;
			}
			.facebook{background-color: #3b5998;}.facebook:hover{color:#3b5998;border:1px solid #3b5998;}
			.instagram{background-color: #000;}.instagram:hover{color:#000;border:1px solid #000;}
			.youtube{background-color: #bb0000;}.youtube:hover{color:#bb0000;border:1px solid #bb0000;}
			.twitter{background-color: #55acee;}.twitter:hover{color:#55acee;border:1px solid #55acee;}
		}

		.textofooter{
			padding-top:30px;
			color: #fafafa;
			text-align:justify;
			ul{
				list-style: none;
				padding:0px;
				li{
					a{
						text-decoration: none;
						color: #f5f5f5;
					}
					a:hover{
						opacity:0.5;
					}
				}
			}
		}

		.division{
			height: 2px;
			width: 100%;
			background:#26C6DA;
		}

		.redesfooter{
			background-color:#1E2B38;
			height: 40px;
			width: 100%;
			.footercopy{
				padding:10px;
				color: #c1c1c1;
			}
			.iconsfooter{
				padding:5px;
				font-size: 21px;
				color: #fafafa;
				i{
					margin-right: 10px;
					-webkit-transition: 0.5s;
					-o-transition: 0.5s;
					transition: 0.5s;
				}
				i:hover{
					opacity:0.5;
				}
			}
		}
	}
		
		@media only screen and (max-width : 600px) {
			.redes_sociales{
				display: none;
			}
		}
</style>