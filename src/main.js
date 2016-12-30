import Vue from 'vue'
import VueRouter from 'vue-router'

// creamos los componentes de las  vistas
import Home from './states/Home.vue'
import Xbox from './states/Xbox.vue'
Vue.use(VueRouter)


const router = new VueRouter({
	routes:[
		{path:'', component: Home},
		{path:'/xbox', component: Xbox}
	]
})



// componentes
import Cabecera from './components/Cabecera.vue'
Vue.component("cabecera", Cabecera)
import Titulos from './components/Titulos.vue'
Vue.component("titulos", Titulos)





/* eslint-disable no-new */
import Index from './states/Index.vue'
new Vue({
	el: '#app',
	render: h => h(Index),
	router
})
