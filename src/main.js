// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import infiniteScroll from 'vue-infinite-scroll'
import ECharts from 'vue-echarts/components/ECharts'
// a按需引入echart图表配置，同下b配置
import '../node_modules/echarts/lib/chart/bar'
// import '../node_modules/echarts/lib/chart/line'
// import '../node_modules/echarts/lib/chart/pie'
// import '../node_modules/echarts/lib/chart/tooltip'

Vue.use(infiniteScroll)

Vue.prototype.$http = axios

Vue.component('chart', ECharts)

// require('./mock/index.js')
// b直接引入所有echart配置,同上a配置
// require('echarts')

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
