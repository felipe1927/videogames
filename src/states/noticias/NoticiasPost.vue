<template>
	<div id="state-noticias_post">
		
		<div class="row">
			<div class="col-md-8">
				<h1>{{ $route.params.idnoticia }}</h1>
				<div class="fecha"> <span class="fa fa-clock-o"></span> 06/01/2017, 3:55p.m</div>
				<hr>

				<!-- imagen -->
				<img src="static/img/wall2.jpg" width="100%">
				<br><br>

				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae repellat corporis velit optio odit, mollitia harum deleniti architecto voluptatibus iste reprehenderit temporibus consequuntur omnis delectus unde ab illo amet cum voluptates, cupiditate officia necessitatibus repudiandae! Placeat quia ratione quod, necessitatibus officia sunt impedit magnam error expedita numquam iste, ea? Eos assumenda at, quos nihil delectus ipsum voluptates aut fugit, cum ipsam, harum possimus hic odio? At sunt aliquam quis, exercitationem blanditiis, dicta labore nobis ipsum voluptatem. Nulla, officia, quibusdam. Nemo placeat dolorum, sunt ipsum animi odit quia nihil, doloribus repudiandae rem eius corporis quae, veritatis expedita perferendis omnis libero. Exercitationem.
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

				<titulos name="Compartir en:" icon="fa-share-alt"></titulos>
				<div class="panels row redes">
					<div class="col-md-4 col-xs-4 col-sm-4" v-for="red in redes">
						<a href="" :class="[red.clase]">
							<span :class="['fa', red.icon]"></span>
						</a>
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