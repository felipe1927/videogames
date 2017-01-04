<template>
	<header>
		<div class="container">
			<p @click="openMenu"><span class="glyphicon glyphicon-menu-hamburger"></span></p>
			
			<img src="static/img/logo.png" width="200">

			<ul id="menu">
				<li @click="closeMenu"><span class="glyphicon glyphicon-arrow-left"></span></li>
				
				<li v-for="item in menu" @click="closeMenu">
					<router-link :to="item.to" exact>
						<!-- <img :src="item.src" width="19" alt=""> -->
						{{ item.name }}
					</router-link>
				</li>
			</ul>
		</div>

	</header>
</template>

<script>
	export default{
		data () {
			return {
				menu: [
					{to:'/',name: 'Inicio'},
					{to:'/xbox',name: 'XOne', src:'../assets/xone1.png'},
					{to:'/play',name: 'PS4', src:'../assets/ps1.png'},
					{to:'/pc',name: 'PC', src:'../assets/pc1.png'},
					{to:'/comunidad',name: 'Comunidad'}
				],
			}
		},


		methods:{
			openMenu(){
				var menu =  document.getElementById('menu');
				menu.style.left = 0;
			},
			closeMenu(){
				var menu =  document.getElementById('menu');
				menu.style.left = '-250px';
			}
		}
	}
</script>

<style lang="scss">
	header{
		background: #2c3e50;
		color: #fff;
		p{
			margin: 0;
			float: left;
			display: none;
			padding: 15px;
			cursor: pointer;
			font-weight: bold;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}
		#menu{
			z-index: 100;
			margin: 0;
			padding: 0;
			width: 50%;
			float: right;
			list-style: none;
			text-align: right;
			// importante para el menu
			transition: all 0.5s ease;
			li{
				display: inline-block;
				a{
					color: #fff;
					padding: 15px;
					display: inline-block;
					text-decoration: none;
					transition: all 0.4s ease;
					-webkit-box-sizing: border-box;
					-moz-box-sizing: border-box;
					box-sizing: border-box;

				}
				a:hover, .router-link-active{
					background: rgba(0,0,0,0.5);
				}
			}
			// fecha para cerrar el menu
			li:nth-child(1){
				display: none;
				padding: 15px;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;	
			}
		}
	}

	@media only screen and (max-width : 600px) {
		header{
			p{
				display: block;
			}
			#menu{
				top: 0;
				left: -250px;
				width: 230px;
				height: 100%;
				position: fixed;
				text-align: left;
				background: #2C3E50;
				-webkit-box-shadow: 6px 4px 5px -5px rgba(0,0,0,0.75);
				-moz-box-shadow: 6px 4px 5px -5px rgba(0,0,0,0.75);
				box-shadow: 6px 4px 5px -5px rgba(0,0,0,0.75);
				li{
					display: block;
					a{
						width: 100%;
					}
				}
				// felcha para cerrar el menu
				li:nth-child(1){
					display: block;
				}
			}
		}
		
	}
</style>