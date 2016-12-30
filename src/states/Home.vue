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
				<div class="panels">
					<div class="media" v-for="item in proximosJuegos">
						<div class="media-left">
							<img class="media-object" src="../assets/WALL2.png" width="90">
						</div>
						<div class="media-body">
							<h4 class="media-heading">{{ item.titulo }}</h4>
							{{ item.resumen }}
						</div>
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
					{titulo: 'Titulo', resumen: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolore, similique velit. Modi explicabo harum inventore quibusdam error...'},
					{titulo: 'Titulo', resumen: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolore, similique velit. Modi explicabo harum inventore quibusdam error...'},
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


		@media only screen and (max-width : 600px) {
			
		}
	}	
</style>