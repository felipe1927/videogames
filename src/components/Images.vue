<template>
	<div class="image" 
		:style="'background: url('+url+')center center;background-size: cover;-webkit-background-size: cover;width:'+x+'; height:'+y">
	</div>
</template>

<script>
	export default {
		props:['url','x','y']
	}
</script>

<style lang="scss" scoped>
	.image{
		width: 200px;
		height: 200px;
	}
</style>