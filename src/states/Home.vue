<template>
	<div id="state-home">
		<barra class="inicio"></barra>
		
		<div class="row">
			<div class="col-md-8">
				<!-- galeria inicial -->
				<div class="galeria"></div>

				<br>

				<!-- Top Juegos -->
				<titulos name="Top Juegos"></titulos>				
				<div class="panels">
					<div class="row">
						<div class="col-md-3 img1"></div>
						<div class="col-md-3 img2"></div>
						<div class="col-md-3 img3"></div>
						<div class="col-md-3 img4"></div>
					</div>
				</div>

				<br>

				<!-- Ultimas noticias -->
				<titulos name="Últimas noticias"></titulos>
				<div class="panels">
					<div class="row">
						<div class="col-md-4">
							<img src="../assets/1.jpg" height="200px" alt="">						
						</div>
						<div class="col-md-8">
							<h4>Uncharted 4</h4>
						</div>
					</div>
					<hr>

					<div class="row">
						<div class="col-md-4">
							<img src="../assets/2.jpg" height="200px" alt="">						
						</div>
						<div class="col-md-8">
							<h4>GT Sport</h4>
						</div>
					</div>
					<hr>

					<div class="row">
						<div class="col-md-4">
							<img src="../assets/3.jpg" height="200px" alt="">						
						</div>
						<div class="col-md-8">
							<h4>FIFA 17</h4>
						</div>
					</div>
					<hr>

					<div class="row">
						<div class="col-md-4">
							<img src="../assets/4.jpg" height="200px" alt="">						
						</div>
						<div class="col-md-8">
							<h4>Battlefield 1</h4>
						</div>
					</div>
					<hr>

				</div>
			</div>
			
			<br>

			<div class="col-md-4">
				<titulos name="Proximos juegos" icon="glyphicon-fire"></titulos>
				<div class="panels proximos">
					<div class="media" v-for="item in proximosJuegos">
						<div class="media-left">
							<img class="media-object" src="../assets/wall2.png" width="90">
						</div>
						<div class="media-body" align="justify">
							<h4 class="media-heading">{{ item.titulo }}</h4>
							{{ item.resumen }}
						</div>
					</div>
				</div class="media">

				<br>

				<titulos name="Trailers" icon="glyphicon-facetime-video"></titulos>
				<div class="panels">
					<iframe width="100%" height="191" src="https://www.youtube.com/embed/yYjD78X1d9Q?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe> <br> <b>FIFA 17 | Tráiler Oficial</b> <hr>

					<iframe width="100%" height="191" src="https://www.youtube.com/embed/c7nRTF2SowQ?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe> <br> <b>Battlefield 1 | Tráiler Oficial</b>
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

		hr{
			border-top: 1px dashed #757575;
		}

		.proximos{
			background:#F2F2F2;
			color: #2C3E50;
		}

		.img1{
			background-image: url(../assets/5.jpg);
			background-size: cover;
			width: 119px;
			height: 150px;
			margin: 30px;
		}

		.img2{
			background-image: url(../assets/6.jpg);
			background-size: cover;
			width: 119px;
			height: 150px;
			margin: 30px;
		}

		.img3{
			background-image: url(../assets/7.png);
			background-size: cover;
			width: 119px;
			height: 150px;
			margin: 30px;
		}

		.img4{
			background-image: url(../assets/8.png);
			background-size: cover;
			width: 119px;
			height: 150px;
			margin: 30px;
		}

		@media only screen and (max-width : 600px) {
			
		}
	}	
</style>