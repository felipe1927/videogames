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
				<div class="row" align="justify">
					<div v-for="top in topJuegos" :class="['col-md-4', top.clase]">
						<div class="info">
							<p class="headline">{{ top.titulo }}</p>
							<p class="headline2">{{ top.resumen }}</p>
						</div>
					</div>
				</div>

				<br>

				<!-- Ultimas noticias -->
				<titulos name="Últimas noticias"></titulos>
				<div class="panels">
					<div v-for="noticia in noticias" class="row noticias">
						<div class="col-md-4">
							<img :src="noticia.img1" height="200px">
						</div>
						<div class="col-md-8">
							<h4 class="bold">{{ noticia.titulo }}</h4>
							<p>{{ noticia.fecha }}</p>
							<p>
								{{ noticia.parrafo1 }}... 
								<router-link :to="{name:'noticiaPost', params:{idnoticia: noticia.titulo }}">ver más</router-link>
							</p>
							<p>{{ noticia.categorias }}</p>
							<ticket name="Noticia" id="noticia"></ticket>
						</div>
					</div>
					<!-- ver todas las noticias -->
					<router-link to="" class="ver_mas">Ver más</router-link>
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
					<div class="media" v-for="item in destacados">
						<div class="media-left">
							<img class="media-object" :src="item.img" width="90">
						</div>
						<div class="media-body" align="justify">
							<h4 class="media-heading">{{ item.titulo }}</h4>
							{{ item.resumen }}
						</div>
					</div>
				</div>
				<br>
				
				
				<!-- trailers -->
				<titulos name="Trailers" icon="fa-play"></titulos>
				<div class="panels">
					<div v-for="item in trailers">
						<iframe width="100%" height="186" :src="item.src" frameborder="0" allowfullscreen></iframe> 
						<br>
						<b>{{ item.titulo }}</b>
						<hr>
					</div>
				</div>
				<br>
				
				<!-- ultimos lanzamientos -->
				<titulos name="Últimos lanzamientos" icon="fa-flag"></titulos>
				<div class="panels">
					<div class="row">
						<div v-for="lanzamiento in lanzamientos" class="col-md-4 col-xs-4 col-sm-4">
							<img :src="lanzamiento.img" width="100%" :title="lanzamiento.titulo">
							<br><br>
						</div>
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
				noticias: [],
				trailers: [],
				lanzamientos: [],
				destacados:[],

				topJuegos:[
					{titulo:'Uncharted 4', resumen:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, laborum, dolore. Illum, soluta, animi! Molestias eum, sapiente deserunt voluptates minus.', clase:'img1'},
					{titulo:'Gran Turismo Sport', resumen:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, laborum, dolore. Illum, soluta, animi! Molestias eum, sapiente deserunt voluptates minus.', clase:'img2'},
					{titulo:'FIFA 17', resumen:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, laborum, dolore. Illum, soluta, animi! Molestias eum, sapiente deserunt voluptates minus.', clase:'img3'},
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
				]
			}
		},

		mounted () {
			var url = "http://localhost/01/videogames/static/core.php/inicio/";
			// noticias
			fetch(url+'noticias')
			.then(response => response.json())
			.then(datos => {
				this.noticias = datos;
			});

			// trailers
			fetch(url+'trailers')
			.then(response => response.json())
			.then(datos => {
				this.trailers = datos;
			});

			// lanzamientos
			this.$http.get(url+'lanzamientos')
			.then(response => {
				return response.json();
			}).then(datos => {
				this.lanzamientos = datos;
			});

			// destacados
			this.$http.get(url+'destacados')
			.then(response => {
				return response.json();
			}).then(datos => {
				this.destacados = datos;
			});
			
		}
	}
</script>

<style lang="scss" scoped>
	#state-home{
		.galeria{
			width: 100%;
			height: 320px;
			background: url(/static/img/wall2.jpg)center center;
			-webkit-background-size: cover;
			background-size: cover;
		}

		.proximos{
			background:#F2F2F2;
		}

		.img1{
			background-image: url(/static/img/noticias/noticia1.jpg);
			background-size: cover;
			height: 230px;
			padding: 0px;
		}

		.img2{
			background-image: url(/static/img/noticias/noticia2.jpg);
			background-size: cover;
			height: 230px;
			padding: 0px;
		}

		.img3{
			background-image: url(/static/img/noticias/noticia3.jpg);
			background-size: cover;
			height: 230px;
			padding: 0px;
		}

		.info{
			width: 100%;
			height: 100%;
			background-color: rgba(31,31,31,0.5);
			-webkit-transition: 0.5s;
			-o-transition: 0.5s;
			transition: 0.5s;
			opacity: 0;
			overflow: hidden;
			position: absolute;
		}

		.img1:hover .info, .img2:hover .info, .img3:hover .info {
			opacity: 1;
		}

		.headline{
			position: absolute;
			color: #fff;
			padding: 20px;
			font-size: 18px;
			-webkit-transition: 0.5s;
			-o-transition: 0.5s;
			transition: 0.5s;
		}

		.headline2{
			position: absolute;
			color: #fff;
			padding: 20px;
			font-size: 15px;
			-webkit-transition: 0.5s;
			-o-transition: 0.5s;
			transition: 0.5s;
			margin-top: 50px;
		}
		
		.noticias{
			padding-bottom: 10px;
			margin-bottom: 10px;
			border-bottom: 1px dashed #757575;
			h4{
				a{
					color: #414141;
				}
			}
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