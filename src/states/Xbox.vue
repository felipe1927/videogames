<template>
	<div id="state-xbox">
		<barra class="xbox"></barra>

		<div class="caja">
			<a href="#" class="icon-button pinterest"><i class="fa fa-pinterest"></i><span></span></a>
		</div>
	</div>
</template>

<script>
	export default{

	}
</script>

<style lang="scss" scoped>
	#state-xbox{
		.caja{
			a{
				text-align: center;
				font-size: 20px;
			}
			.icon-button{
				background-color:#fff;
				border-radius: 48px;
				cursor: pointer;
				display: inline-block;
				height: 48px;
				line-height: 48px;
				margin: 0 8px;
				position: relative;
				width: 48px;
				span{
					border-radius: 0;
					display: block;
					height: 0;
					left: 50%;
					margin: 0;
					position: absolute;
					top: 50%;
					-webkit-transition: all 0.3s;
					-moz-transition: all 0.3s;
					-o-transition: all 0.3s;
					transition: all 0.3s;
					width: 0;
				}
				i{
					background: none;
					color: white;
					left: 0;
					line-height: 48px;
					position: absolute;
					top: 0;
					-webkit-transition: all 0.3s;
					-moz-transition: all 0.3s;
					-o-transition: all 0.3s;
					transition: all 0.3s;
					width: 48px;
					z-index: 2;
				}
				.fa-pinterest{
					color: #C92228;
				}
			}

			.pinterest span{
				background-color: #C92228;
			}
			.icon-button:hover span{
				width: 48px;
				height: 48px;
				border-radius: 48px;
				margin: -24px;
			}

			.icon-button:hover .fa-pinterest{
				color: white;
			}
		}
	}
</style>