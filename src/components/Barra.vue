<template>
	<div :class="['barra', color]">
	</div>	
</template>

<script>
	export default{
		props: ['barra','color']
	}
</script>

<style scoped>
	.barra{
		width: 100%;
		height: 6px;
		position: absolute;
		top: 50px;
		left: 0
	}

	.inicio{background: #26C6DA;}
	.xbox{background: #107c10;}
	.ps{background: #003791;}
	.pc{background: #C62828;}
	.comunidad{background: #18FFFF;}
	

	
</style>