<template>
	<div id="state-index">
		<header>
			<div class="container">
				<h1>Titulo</h1>
				<router-link to="/">Home</router-link>
			</div>
		</header>
		<div class="body">
			<div class="container">
				<router-view></router-view>				
			</div>
		</div>
		<footer>
			<div class="container">
				<h2>footer</h2>
			</div>
		</footer>
	</div>
</template>

<script>
	export default {

	}	
</script>

<style lang="scss">
	#state-index{
		header{
			background: #2c3e50;
			color: #fff;
		}

		footer {
			background: #2c3e50;
			color: #fff;
		}

	}
</style>