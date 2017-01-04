<template>
	<span :class="['ticket', id]">{{ name }}</span>
</template>

<script>
	export default{
		props:['id', 'name']
	}
</script>

<style lang="scss" scoped>
	.ticket{
		color: #fff;
		padding: 5px;
		cursor: default;
		font-size: 11px;
		background: #414141;
		border-radius: 10px;
	}

	.avance{background: #FF4000}
	.articulo{background: #0080FF}
	.noticia{background: #B40404}
</style>