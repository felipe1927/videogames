<template>
	<div id="state-articulos" class="panels">
		
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4" v-for="item in articulos">
				<images :url="item.img" x="100%" y="150px"></images>
				<div class="bold"><a href="">{{ item.titulo }}</a> <br> <ticket name="Articulos" id="articulo"></ticket></div>
				<br>
			</div>
		</div>
		
		<router-link to="" class="ver_mas">Ver más</router-link>
	</div>
</template>

<script>
	export default{
		data () {
			return{
				articulos:[
					{img:'static/img/noticias/noticia1.jpg',titulo:'Titulo del articulo'},
					{img:'static/img/noticias/noticia2.jpg',titulo:'Titulo del articulo'},
					{img:'static/img/wall2.jpg',titulo:'Titulo del articulo'}
				]
			}
		}
	}
</script>

<style lang="scss" scoped>
	#state-articulos{
	}
</style>