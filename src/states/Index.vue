<template>
	<div id="state-index">
		<!-- cabecera es un componente que esta en la carpeta components-->
		<cabecera></cabecera>


		<!-- cuerpo -->
		<div class="body">
			<div class="container cont-body">
				<router-view></router-view>				
			</div>
		</div>



		<!-- pie de pagina -->
		<footer>
			<div class="container">
				<h2>footer</h2>
			</div>
		</footer>
	</div>
</template>

<script>
	export default {
		methods:{
			closeMenu(){
				var menu =  document.getElementById('menu');
				menu.style.left = '-250px';
			}
		}
	}	
</script>

<style lang="scss">
	#state-index{
		.cont-body{
			background: #fff;
		}

	}
</style>