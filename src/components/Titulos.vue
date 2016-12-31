<template>
	<div :class="['titulos', clase]">
		<span :class="['glyphicon', icon ? icon :'glyphicon-info-sign']"></span> 
		{{ name }}
	</div>
</template>

<script>
	export default{
		props: ['name','icon','clase']
	}
</script>

<style>
	.titulos{
		color: #fff;
		width: 100%;
		padding: 10px;
		background: #2C3E50;
		border-radius: 10px;
		margin-bottom: 15px;
		border: 1px solid #26C6DA; 
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	.blue{background: blue;}
	.yellow{background: yellow;}
	.red{background: #C62828; color:#f5f5f5;}

	
</style>