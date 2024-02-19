// Import Bootstrap and BootstrapVue CSS files (order is important)
import 'bootstrap/dist/css/bootstrap.css'
// import 'bootstrap-vue/dist/bootstrap-vue.css'


import './Icon/index.js';
import 'sweetalert2/dist/sweetalert2.min.css';
// import Vue from 'vue'
import { createApp } from 'vue';
// import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import swal from 'vue-sweetalert2';
import store from './State/index.js';
import app from './Components/App.vue';
import router from './Router/index.js';


// Make BootstrapVue available throughout your project
// Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
// Vue.use(IconsPlugin)

const BASE_URL = 'http://127.0.0.1:8000';

createApp(app)
.use(router)
.use(store)
.use(swal)
.use(BASE_URL)
.component('font-awesome-icon', FontAwesomeIcon)
.mount("#app")

import 'bootstrap/dist/js/bootstrap.js';
