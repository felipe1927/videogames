<template>
	<div id="state-index">
		<!-- cabecera es un componente que esta en la carpeta components-->
		<cabecera></cabecera>

		<!-- redes sociales -->
		<div class="redes_sociales">
			<div v-for="red in redes_sociales"  :title="red.title">
				<a :class="['redes', red.clase]" :href="red.url" target="_blank">{{ red.name }}</a>
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
			</div>
		</footer>
	</div>
</template>

<script>
	export default {
		data () {
			return{
				redes_sociales:[
					{name:'F', clase:'face', title:'facebook', url:'https://www.facebook.com/'},
					{name:'I', clase:'insta', title:'instagram', url:'https://www.instagram.com/'},
					{name:'Y', clase:'youtube', title:'youtube', url:'https://www.youtube.com/'}
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

<style lang="scss">
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
				line-height: 22px;
				font-weight: bold;
				text-align: center;
				border-radius: 100%;
				text-decoration: none;
				background-color: #ddd;
			}
			.face{background-color: #3B5998;}
			.insta{background-color: #125688;}
			.youtube{background-color: #bb0000;}
		}

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