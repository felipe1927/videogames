<template>
	<div id="state-index">
		<!-- cabecera es un componente que esta en la carpeta components-->
		<cabecera></cabecera>

		<!-- redes sociales -->
		<!-- <div class="redes_sociales">
			<div v-for="red in redes_sociales"  :title="red.title">
				<a :class="['redes', red.clase]" :href="red.url" target="_blank"><i :class="red.icon"></i></a>
			</div>
		</div> -->

		<div class="redes_sociales">
			<div v-for="red in redes_sociales"  :title="red.title">
				<a :class="['icon-button', red.clase]" :href="red.url" target="_blank"><i :class="red.icon"></i></a>
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
					{icon:'fa fa-facebook', clase:'facebook', title:'facebook', url:'https://www.facebook.com/'},
					{icon:'fa fa-instagram', clase:'instagram', title:'instagram', url:'https://www.instagram.com/'},
					{icon:'fa fa-youtube-play', clase:'youtube', title:'youtube', url:'https://www.youtube.com/'},
					{icon:'fa fa-twitter', clase:'twitter', title:'twitter', url:'https://www.twitter.com/'}
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
<<<<<<< HEAD
			position: fixed;		
			a{
				text-align: center;
				font-size: 22px;
=======
			position: fixed;
			.redes{
				margin: 5px;
				color: #fff;
				width: 40px;
				height: 40px;
				padding: 10px;
				display: block;
				line-height: 22px;
				font-weight: bold;
				text-align: center;
				border-radius: 100%;
				text-decoration: none;
				background-color: #ddd;
				-webkit-box-shadow: 3px 4px 5px -3px rgba(0,0,0,0.75);
				-moz-box-shadow: 3px 4px 5px -3px rgba(0,0,0,0.75);
				box-shadow: 3px 4px 5px -3px rgba(0,0,0,0.75);
>>>>>>> 1dd37c9b4787918260f7075dd1a828d293f8f5e3
			}
			.icon-button{
				background-color:#fff;
				border-radius: 48px;
				cursor: pointer;
				display: inline-block;
				height: 48px;
				line-height: 48px;
				margin: 0 8px;
				position: relative;
				width: 48px;
				span{
					background:#000;
					border-radius: 0;
					display: block;
					height: 0;
					left: 50%;
					margin: 0;
					position: absolute;
					top: 50%;
					-webkit-transition: all 0.3s;
					-moz-transition: all 0.3s;
					-o-transition: all 0.3s;
					transition: all 0.3s;
					width: 0;
				}
				i{
					background: none;
					color: white;
					left: 0;
					line-height: 48px;
					position: absolute;
					top: 0;
					-webkit-transition: all 0.3s;
					-moz-transition: all 0.3s;
					-o-transition: all 0.3s;
					transition: all 0.3s;
					width: 48px;
					z-index: 2;
				}
				.fa-facebook{color: #3b5998;}
				.fa-instagram{color: #000;}
				.fa-youtube-play{color: #bb0000;}
				.fa-twitter{color: #55acee;}
			}

			.facebook span{background-color:#3b5998;}
			.instagram span{background-color:#000;}
			.youtube span{background-color:#bb0000;}
			.twitter span{background-color:#55acee;}

			.icon-button:hover span{
				width: 48px;
				height: 48px;
				border-radius: 48px;
				margin: -24px;
			}

			.icon-button:hover .fa-facebook, .icon-button:hover .fa-instagram, .icon-button:hover .fa-youtube-play, .icon-button:hover .fa-twitter{color: white;}
		}
		
		// .redes_sociales{
		// 	left: 0;
		// 	top: 100px;
		// 	width: 60px;
		// 	position: fixed;		
		// 	.redes{
		// 		margin: 5px;
		// 		color: #fff;
		// 		width: 40px;
		// 		height: 40px;
		// 		padding: 10px;
		// 		display: block;
		// 		line-height: 22px;
		// 		text-align: center;
		// 		border-radius: 100%;
		// 		text-decoration: none;
		// 		background-color: #ddd;
		// 		font-size: 19px;
		// 		-webkit-transition: all 0.3s;
		// 		-o-transition: all 0.3s;
		// 		transition: all 0.3s;
		// 	}
		// 	.redes:hover{
		// 		background-color:#fff;
		// 	}
		// 	.face{background-color: #3b5998;}.face:hover{color:#3b5998;border:1px solid #3b5998;}
		// 	.insta{background-color: #000;}.insta:hover{color:#000;border:1px solid #000;}
		// 	.youtube{background-color: #bb0000;}.youtube:hover{color:#bb0000;border:1px solid #bb0000;}
		// 	.twitter{background-color: #55acee;}.twitter:hover{color:#55acee;border:1px solid #55acee;}
		// }

		.textofooter{
			padding:20px;
			color: #fafafa;
			font-size: 18px;
		}
		
		@media only screen and (max-width : 600px) {
			.redes_sociales{
				display: none;
			}
		}

	}
</style>