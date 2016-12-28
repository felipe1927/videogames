import Vue from 'vue'
import VueRouter from 'vue-router'

// creamos los componentes de las  vistas
import Home from './states/Home.vue'
Vue.use(VueRouter)


const router = new VueRouter({
	routes:[
		{path:'', component: Home}
	]
})



// componentes
import Cabecera from './components/Cabecera.vue'
Vue.component("cabecera", Cabecera)





/* eslint-disable no-new */
import Index from './states/Index.vue'
new Vue({
	el: '#app',
	render: h => h(Index),
	router
})
