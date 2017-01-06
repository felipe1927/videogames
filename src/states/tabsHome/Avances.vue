<template>
	<div id="state-avances" class="panels">
		<h3>Últimos avances:</h3>
		<br>
		
		<div v-for="avance in avances" class="avances">
			<div class="img">
				<images url="static/img/noticias/noticia1.jpg" x="150px" y="150px"></images>
			</div>
			<div class="texto">
				<p><b>{{ avance.titulo }}</b></p>
				<p>04/01/2017</p>
				<p>{{ avance.resumen }}... <a href="">Ver más</a></p>
				<ticket name="Avance" id="avance"></ticket>
			</div>
		</div>

		<a href="" class="ver_mas">Ver más</a>
		
	</div>
</template>

<script>
	export default{
		data () {
			return{
				avances:[
					{titulo:'TITULOS 1', resumen:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo asperiores debitis iusto id minus! Dignissimos eos voluptas nam pariatur id.'},
					{titulo:'TITULOS 2', resumen:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo asperiores debitis iusto id minus! Dignissimos eos voluptas nam pariatur id.'},
					{titulo:'TITULOS 3', resumen:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo asperiores debitis iusto id minus! Dignissimos eos voluptas nam pariatur id.'}
				]
			}
		}
	}
</script>

<style lang="scss" scoped>
	#state-avances{
		.avances{
			width: 100%;
			padding: 5px;
			overflow: hidden;
			background: #f2f2f2;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
			margin-bottom: 10px;
			.img{
				float: left;
			}
			.texto{
				float: left;
				width: 450px;
				padding: 7px;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;
				p:nth-child(2){
					color: blue;
				}
			}

		}

		@media only screen and (max-width : 600px) {
			.avances{
				.img, .texto{
					width: 100%;
				}
			}
		}

	}
</style>