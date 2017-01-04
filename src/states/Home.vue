<template>
	<div id="state-home">
		
		<barra class="inicio"></barra>
		
		<div class="row">
			<div class="col-md-8">
				<!-- galeria inicial -->
				<div class="galeria"></div>
				<br>

				<!-- Top Juegos -->
				<titulos name="Top Juegos del Mes" icon="fa-bookmark-o"></titulos>
				<div class="panels">
					<div class="row">
						<div class="col-md-3 top"><img src="static/img/top/5.jpg"></div>
						<div class="col-md-3 top"><img src="static/img/top/6.jpg"></div>
						<div class="col-md-3 top"><img src="static/img/top/7.jpg"></div>
						<div class="col-md-3 top"><img src="static/img/top/8.jpg"></div>
					</div>
				</div>

				<br>

				<!-- Ultimas noticias -->
				<titulos name="Últimas noticias"></titulos>
				<div class="panels">
					<div v-for="item in noticias" class="row noticias">
						<div class="col-md-4">
							<img src="static/img/noticias/noticia1.jpg" height="200px">
						</div>
						<div class="col-md-8">
							<h4><b>{{ item.titulo }}</b></h4>
							<p>03/01/2017, 03:23pm</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore tempora sed beatae deserunt maxime magnam, quia alias sunt voluptatibus temporibus... <a href="">Ver más</a></p>
							<p>Xbox / Play / Pc</p>
							<ticket name="Noticia" id="noticia"></ticket>
						</div>
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
				<titulos name="Juegos según su calificación" icon="fa-star-o"></titulos>
				<table class="table table-striped">
					<thead>
						<tr class="bold">
							<td>#</td>
							<td>Categoría</td>
							<td>Nombre</td>
						</tr>
					</thead>
					<tbody>
						<tr v-for="item in tabla">
							<td>{{ item.id }}</td>
							<td>{{ item.categoria }}</td>
							<td>{{ item.nombre }}</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<br>


			
			<!-- SEGUNDA COLUMNA -->
			<div class="col-md-4">
				<!-- juegos -->
				<titulos name="Destacados" icon="fa-bullhorn"></titulos>
				<div class="panels proximos">
					<div class="media" v-for="item in proximosJuegos">
						<div class="media-left">
							<img class="media-object" :src="item.image" width="90">
						</div>
						<div class="media-body" align="justify">
							<h4 class="media-heading">{{ item.titulo }}</h4>
							{{ item.resumen }}
						</div>
					</div>
				</div class="media">
				<br>
				
				<!-- trailers -->
				<titulos name="Trailers" icon="fa-play"></titulos>
				<div class="panels">
					<iframe width="100%" height="186" src="https://www.youtube.com/embed/W2Wnvvj33Wo?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe> <br> <b>The Last of US 2 | Tráiler Oficial</b> <hr>

					<iframe width="100%" height="186" src="https://www.youtube.com/embed/c7nRTF2SowQ?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe> <br> <b>Battlefield 1 | Tráiler Oficial</b>
				</div>
				<br>
				
				<!-- ultimos lanzamientos -->
				<titulos name="Últimos lanzamientos" icon="fa-flag"></titulos>
				<div class="panels">
					<div v-for="imagenes in lanzamientos">
						<div class="row">
							<div class="col-md-4 col-xs-4 col-sm-4" v-for="imagen in imagenes">
								<a href="" :title="imagen.title">
									<img :src="imagen.img" width="100%">
								</a>
							</div>
						</div>
						<br>
					</div>
				</div>
				<br>
				
				<!-- foros -->
				<titulos name="Foros" icon="fa-pencil"></titulos>
				<div class="list-group">
					<a href="#" class="list-group-item " v-for="item in noticias">
						* {{ item.titulo }}
					</a>
				</div>
			</div>
		</div>
		
		<!-- ultimo video -->
		<div class="ultimo_video">
			<p>Video del momento</p>
			<iframe src="https://www.youtube.com/embed/c7nRTF2SowQ?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
		</div>


	</div>
</template>

<script>
	export default{
		data () {
			return {
				proximosJuegos:[
					{titulo: 'The Last Guardian', resumen: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, dolorum?', image:"static/img/top/2.jpg"},
					{titulo: 'Final Fantasy XV', resumen: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos, consectetur.', image:"static/img/top/4.png"},
					{titulo: 'Watch Dogs 2', resumen: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, unde.', image:"static/img/top/3.jpg"}
				],
				noticias:[
					{titulo: 'Noticia 1'},
					{titulo: 'Noticia 2'},
					{titulo: 'Noticia 3'},
					{titulo: 'Noticia 4'},
					{titulo: 'Noticia 5'}
				],
				tabs:[
					{to:'/', name:'Avances'},
					{to:'/articulos', name:'Artículos'},
					{to:'/guias', name:'Trucos y Guías'},
					{to:'/categorias', name:'Categorías'}
				],
				tabla:[
					{id:'1', categoria: 'Accion', nombre: 'Item 1'},
					{id:'2', categoria: 'Accion', nombre: 'Item 2'},
					{id:'3', categoria: 'Accion', nombre: 'Item 3'},
					{id:'4', categoria: 'Accion', nombre: 'Item 4'},
				],

				lanzamientos:[
					[
						{title:'nombre del juego',img:'static/img/top/1.jpg'},
						{title:'nombre del juego',img:'static/img/top/2.jpg'},
						{title:'nombre del juego',img:'static/img/top/3.jpg'}
					],
					[
						{title:'nombre del juego',img:'static/img/top/4.png'},
						{title:'nombre del juego',img:'static/img/top/5.jpg'},
						{title:'nombre del juego',img:'static/img/top/6.jpg'},
					],
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
			background: url('../assets/wall2.jpg')center center;
			-webkit-background-size: cover;
			background-size: cover;
		}

		.proximos{
			background:#F2F2F2;
		}
		
		.noticias{
			padding-bottom: 10px;
			margin-bottom: 10px;
			border-bottom: 1px dashed #757575;
			p:nth-child(2){
				color: blue;
			}
			p:nth-last-child(2){
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

		// ulimo video
		.ultimo_video{
			width: 100%;
			padding: 10px;
			text-align: center;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
			background: url(../assets/vid.jpg)center center;
			-webkit-background-size: cover;
			background-size: cover;
			p{
				color: #fff;
				font-size: 25px;
				font-weight: bold;
			}
			iframe{
				width: 60%;
				height: 382px;
				margin-bottom: 50px;
			}
		}

		@media only screen and (max-width : 600px) {
			.ultimo_video{
				iframe{
					width: 100%;
					height: 200px;
				}
			}
		}
	}	
</style>