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
			<div class="container">
				<p class="textofooter" align="center">© JuegAdictos 2016 Todos los Derechos Reservados</p>
				<br><br>
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
			padding:20px;
			color: #fafafa;
			font-size: 18px;
		}
	}
		
		@media only screen and (max-width : 600px) {
			.redes_sociales{
				display: none;
			}
		}
</style>