<template>
	<div id="state-index">
		<!-- cabecera -->
		<header>
			<div class="container">
				<p @click="openMenu"><span class="glyphicon glyphicon-menu-hamburger"></span></p>
				<p>Logo</p>

				<ul id="menu">
					<li @click="closeMenu"><span class="glyphicon glyphicon-arrow-left"></span></li>
					<li><a href="">Xbox</a></li>
					<li><a href="">Play</a></li>
					<li><a href="">Pc</a></li>
				</ul>
			</div>
		</header>

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
			openMenu(){
				var menu =  document.getElementById('menu');
				menu.style.left = 0;
			},
			closeMenu(){
				var menu =  document.getElementById('menu');
				menu.style.left = '-230px';
			}
		}
	}	
</script>

<style lang="scss">
	#state-index{
		header{
			p:nth-child(1){
				display: none;
			}
			p{
				float: left;
				font-weight: bold;
				margin: 0;
				padding: 15px;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;
			}
			ul{
				margin: 0;
				padding: 0;
				width: 50%;
				float: right;
				list-style: none;
				text-align: right;
				transition: all 0.5s ease;
				li{
					display: inline-block;
					a{
						color: #fff;
						text-decoration: none;
						display: inline-block;
						padding: 15px;
						-webkit-box-sizing: border-box;
						-moz-box-sizing: border-box;
						box-sizing: border-box;

					}
				}
				li:nth-child(1){
					display: none;
				}
			}
		}

		.cont-body{
			background: #fff;
		}



		@media only screen and (max-width : 600px) {
			header{
				p:nth-child(1){
					display: block;
					cursor: pointer;
				}
				ul{
					top: 0;
					left: -230px;
					width: 230px;
					padding: 0;
					height: 100%;
					position: fixed;
					text-align: left;
					background: #2C3E50;
					li{
						display: block;
						a{
							width: 100%;
						}
					}
					li:nth-child(1){
						display: block;
						padding: 15px;
						-webkit-box-sizing: border-box;
						-moz-box-sizing: border-box;
						box-sizing: border-box;	
					}
				}
			}
		}
		

	}
</style>