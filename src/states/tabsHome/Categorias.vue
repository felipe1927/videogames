<template>
	<div id="state-categorias" class="panels">
	
		<div>
			<div class="item" v-for="categoria in categorias">
				<div class="icono"><i class="material-icons">{{ categoria.icon }}</i></div>
				<div class="texto">{{ categoria.name }}</div>
			</div>
		</div>

	</div>
</template>

<script>
	export default{
		data () {
			return{
				categorias:[
					{name:'Acción', icon:'star'},
					{name:'Aventura', icon:'star'},
					{name:'Deportes', icon:'star'},
					{name:'Carreras', icon:'star'}
				]
			}
		}
	}
</script>

<style lang="scss" scoped>
	#state-categorias{
		.item{
			width: 100%;
			overflow: hidden;
			margin-bottom: 8px;
			transition: all 0.2s ease;
			padding: 2px;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
			.icono{
				color: #fff;
				float: left;
				width: 40px;
				height: 40px;
				line-height: 50px;
				text-align: center;
				background: #3F51B5;
				border-radius: 100%;
				i{
					font-size: 20px;
				}
			}
			.texto{
				float: left;
				padding: 10px;
			}
		}
		.item:hover{
			background: #f2f2f2;
		}
	}
</style>