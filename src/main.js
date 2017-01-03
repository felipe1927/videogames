import Vue from 'vue'
import VueRouter from 'vue-router'

// creamos los componentes de las  vistas
import Home from './states/Home.vue'
import Xbox from './states/Xbox.vue'
import Play from './states/Play.vue'
import Pc from './states/Pc.vue'

import tabAvance from './states/tabsHome/Avances.vue'
import tabArticulos from './states/tabsHome/Articulos.vue'
Vue.use(VueRouter)


const router = new VueRouter({
	routes:[
		{path:'', component: Home, children:[
			{path:'/', component: tabAvance},
			{path:'/articulos', component: tabArticulos},
		]},

		{path:'/xbox', component: Xbox},
		{path:'/play', component: Play},
		{path:'/pc', component: Pc}
	]
})



// componentes
import Cabecera from './components/Cabecera.vue'
Vue.component("cabecera", Cabecera)
import Titulos from './components/Titulos.vue'
Vue.component("titulos", Titulos)
import Barra from './components/Barra.vue'
Vue.component("barra", Barra)




/* eslint-disable no-new */
import Index from './states/Index.vue'
new Vue({
	el: '#app',
	render: h => h(Index),
	router
})
