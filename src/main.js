// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import infiniteScroll from 'vue-infinite-scroll'
import echarts from 'echarts'

Vue.use(infiniteScroll)
Vue.prototype.$echarts = echarts

Vue.prototype.$http = axios

// require('./mock/index.js')

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
