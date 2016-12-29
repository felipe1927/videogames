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
					arreglo
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
	}	
</style>