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
		border-radius: 10px;
		margin-bottom: 15px;
		width: 100%;
		background: #2C3E50;
		color: #fff;
		border: 1px solid #26C6DA; 
		padding: 10px;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	.red{background: #C62828;color:#f5f5f5;}
	.blue{background: blue;}
	.yellow{background: yellow;}

	
</style>