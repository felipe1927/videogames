<template>
	<div id="state-noticias_post">
		<div class="row">
			<div class="col-md-8">
				<h1>{{ noticia.titulo }}</h1>
				<div class="fecha"> <span class="fa fa-clock-o"></span> {{ noticia.fecha }}</div>
				<hr>

				<!-- imagen -->
				<div>
					<img :src="noticia.img1" width="100%">
					<br><br>
				</div>
				{{ noticia.parrafo1 }} <hr>

				<!-- segundo parrafo -->
				<div v-show="noticia.img2">
					<img :src="noticia.img2" width="100%">
					<br><br>
				</div>
				{{ noticia.parrafo2 }}
			</div>

			<br>

			<!-- segunda columna -->
			<div class="col-md-4">
				<!-- mas noticias -->
				<titulos name="Otras noticias"></titulos>
				<div class="panels row">
					<div class="media noticias" v-for="item in noticias">
						<div class="media-left">
							<img class="media-object" src="static/img/noticias/noticia2.jpg" width="90">
						</div>
						<div class="media-body">
							<h4 class="media-heading">{{ item.titulo }}</h4>
							<span class="date">11/01/2017</span> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat beatae expedita vel minima. Quas, culpa!
						</div>
					</div>
				</div>

				<br>
				
				<!-- compartir noticia -->
				<titulos name="Compartir en:" icon="fa-share-alt"></titulos>
				<div class="panels row redes">
					<div class="col-md-4 col-xs-4 col-sm-4" v-for="red in redes">
						<a href="" :class="[red.clase]">
							<span :class="['fa', red.icon]"></span>
						</a>
					</div>
				</div>

				<br>
				
				<!-- video -->
				<div v-show="noticia.video">
					<titulos name="Video" icon="fa-video-camera"></titulos>
					<div class="panels">
						<iframe width="100%" height="215" :src="noticia.video" frameborder="0" allowfullscreen></iframe>
					</div>
				</div>
			</div>

		</div>
		
		
	</div>
</template>

<script>
	export default{
		data () {
			return {
				noticia: [],
				noticias:[
					{titulo:'Noticia 2'},
					{titulo:'Noticia 3'},
					{titulo:'Noticia 4'}
				],
				redes:[
					{icon:'fa-facebook-square', clase:'face'},
					{icon:'fa-twitter-square', clase:'twitter'},
					{icon:'fa-whatsapp', clase:'whatsapp'}
				]
			}
		},
		mounted () {
			var url = "http://localhost/01/videogames/static/core.php/noticias/index/";

			// noticia
			this.$http.get(url+this.$route.params.idnoticia)
			.then(response => {
				return response.json();
			}).then(datos => {
				this.noticia = datos;
			});
		}
	}
</script>

<style lang="scss" scoped>
	#state-noticias_post{
		.fecha{
			padding: 10px;
			font-size: 16px;
			border-radius: 10px;
			background: #fafafa;
			color: #848484;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}

		.noticias{
			font-size: 13px;
			.date{
				color: blue;
			}
		}

		.redes{
			font-size: 25px;
			text-align: center;
			a{
				color: #414141;
				text-decoration: none;
				span{
					cursor: pointer;
					transition: all 0.2s ease;
				}
			}
			.whatsapp:hover{color: green;}
			.twitter:hover{color: #55ACEE;}
			.face:hover{color: #3B5998;}
		}
	}
</style>