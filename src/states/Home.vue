<template>
	<div id="state-home">
		
		<barra class="inicio"></barra>
		
		<div class="row">
			<div class="col-md-8">
				<!-- galeria inicial -->
				<div class="galeria"></div>
				<br>

				<!-- Top Juegos -->
				<titulos name="Top Juegos" icon="glyphicon-paperclip"></titulos>				
				<div class="panels">
					<div class="row">
						<div class="col-md-3 top"><img src="../assets/5.jpg"></div>
						<div class="col-md-3 top"><img src="../assets/6.jpg"></div>
						<div class="col-md-3 top"><img src="../assets/7.png"></div>
						<div class="col-md-3 top"><img src="../assets/8.png"></div>
					</div>
				</div>
				<br>

				<!-- Ultimas noticias -->
				<titulos name="Últimas noticias"></titulos>
				<div class="panels noticias">
					<div v-for="item in noticias">
						<div class="row">
							<div class="col-md-4">
								<img src="../assets/1.jpg" height="200px">
							</div>
							<div class="col-md-8">
								<h4><b>{{ item.titulo }}</b></h4>
								<p>Fecha: 03/01/2017 - hora: 00:00pm</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore tempora sed beatae deserunt maxime magnam, quia alias sunt voluptatibus temporibus.</p>
								<p>Xbox / Play / Pc</p>
							</div>
						</div>
						<hr>
					</div>
				</div>
				<br>

				<!-- Tabs -->
				<ul class="nav nav-tabs">
					<li role="presentation" v-for="tab in tabs">
						<router-link :to="tab.to" exact>{{ tab.name }}</router-link>
					</li>
				</ul>
				<br>
				<router-view></router-view>
				
				<br>
				<!-- Calificacion de juegos -->
				<titulos name="Juegos según su calificación" icon="glyphicon-star-empty"></titulos>
				<table class="table table-striped">
					<thead>
						<tr class="bold">
							<td>#</td>
							<td>Categoría</td>
							<td>Nombre</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>item 1</td>
							<td>Battlefield 1</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<br>
			

			
			<!-- segunda columna -->
			<div class="col-md-4">
				<!-- juegos -->
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
				
				<!-- trailers -->
				<titulos name="Trailers" icon="glyphicon-facetime-video"></titulos>
				<div class="panels">
					<iframe width="100%" height="191" src="https://www.youtube.com/embed/yYjD78X1d9Q?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe> <br> <b>FIFA 17 | Tráiler Oficial</b> <hr>

					<iframe width="100%" height="191" src="https://www.youtube.com/embed/c7nRTF2SowQ?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe> <br> <b>Battlefield 1 | Tráiler Oficial</b>
				</div>
				<br>
				
				<!-- foros -->
				<titulos name="Foros" icon="glyphicon-pencil"></titulos>
				<div class="list-group">
					<a href="#" class="list-group-item " v-for="item in noticias">
						* {{ item.titulo }}
					</a>
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
					{titulo: 'Titulo', resumen: 'Lorem ipsum dolor sit amet...'},
					{titulo: 'Titulo', resumen: 'Lorem ipsum dolor sit amet...'},
					{titulo: 'Titulo', resumen: 'Lorem ipsum dolor sit amet...'}
				],
				noticias:[
					{titulo: 'Noticia 1'},
					{titulo: 'Noticia 2'}
				],
				tabs:[
					{to:'/', name:'Avances'},
					{to:'/articulos', name:'Artículos'},
					{to:'/guias', name:'Trucos y Guías'},
					{to:'/categorias', name:'Categorías'}
				]
			}
		}
	}
</script>

<style lang="scss" scoped>
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
		}

		.noticias{
			p:nth-child(2){
				color: blue;
			}
			p:nth-last-child(1){
				color: #ccc;
			}
		}

		.top{
			text-align: center;
			img{
				width: 119px;
				height: 150px;
				margin: 10px auto;
			}
		}

		// tabs
		.nav{
			.router-link-active{
				color: #555;
				cursor: default;
				background-color: #fff;
				border: 1px solid #ddd;
				border-bottom-color: transparent;
			}
		}
	}	
</style>