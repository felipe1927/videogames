<template>
	<div class="titulos">
		<span v-bind:class="['glyphicon', icon ? icon :'glyphicon-info-sign']"></span> 
		{{ name }}
	</div>
</template>

<script>
	export default{
		props: ['name','icon']
	}
</script>

<style>
	.titulos{
		border-radius: 10px;
		margin-bottom: 15px;
		width: 100%;
		background: #414141;
		color: #fff;
		padding: 10px;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
</style>