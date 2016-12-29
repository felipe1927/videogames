<template>
	<div id="state-home">
		
		<div class="row">
			<div class="col-md-8">
				<!-- galeria inicial -->
				<div class="galeria"></div>

				<br>

				<!-- Ultimas noticias -->
				<titulos name="Últimas noticias"></titulos>
				<div class="panels">
					class="panels"
				</div>
			</div>
			
			<br>

			<div class="col-md-4">
				<titulos name="Proximos juegos" icon="glyphicon-fire"></titulos>
				<div class="panels proximos_juegos">
					<div v-for="item in proximosJuegos">
						<div class="row">
							<div class="col-md-4">
								<div class="imagen"></div>
							</div>
							<div class="col-md-8">
								<div class="titulo">{{ item.titulo }}</div>
								{{ item.resumen }}
							</div>
						</div>
						<hr>
					</div>
				</div>

				<br>

				<titulos name="Trailers" icon="glyphicon-facetime-video"></titulos>
				<div class="panels">
					arreglo
				</div>

				<br>

				<titulos name="Foros" icon="glyphicon-pencil"></titulos>
				<div class="panels">
					arreglo
				</div>
			</div>
		</div>


	</div>
</template>

<script>
	export default{
		data () {
			return {
				proximosJuegos:[
					{titulo: 'Titulo', resumen: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolore, similique velit. Modi explicabo harum inventore quibusdam error iusto atque quo debitis, in labore...'},
					{titulo: 'Titulo', resumen: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolore, similique velit. Modi explicabo harum inventore quibusdam error iusto atque quo debitis, in labore...'},
				]
			}
		}
	}
</script>

<style lang="scss">
	#state-home{
		.galeria{
			width: 100%;
			height: 320px;
			background: url(../assets/wall2.png)center center;
			-webkit-background-size: cover;
			background-size: cover;
		}

		.proximos_juegos{
			font-size: 11px;
			.imagen{
				width: 100%;
				height: 80px;
				background: #414141;
			}
			.titulo{
				width: 100%;
				border-bottom: 1px solid #414141;
				margin-bottom: 5px;
				font-weight: bold;
			}
		}
	}	
</style>