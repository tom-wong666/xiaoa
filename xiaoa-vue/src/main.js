// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import infiniteScroll from 'vue-infinite-scroll'
import ECharts from 'vue-echarts/components/ECharts'
import { setToken, getToken } from '@/utils/handleCookies'
// a按需引入echart图表配置，同下b配置
import '../node_modules/echarts/lib/chart/bar'
// import '../node_modules/echarts/lib/chart/line'
// import '../node_modules/echarts/lib/chart/pie'
// import '../node_modules/echarts/lib/chart/tooltip'
// 引入网络请求api
import API from '@/page/http/http.api'

// 请求拦截器
axios.interceptors.request.use(
  config => {
    console.log('getToken()', getToken())
    if (getToken() !== 'App添加token') {
      config.headers['X-Token'] = getToken()
    }
    return config
  },
  error => {
    // Do something with request error
    console.log(error) // for debug
    Promise.reject(error)
  }
)

// 返回拦截器
axios.interceptors.response.use(
  response => {
    setToken('tomwong666')
    return response
  },
  error => {
    return Promise.reject(error)
  }
)

Object.defineProperties(Vue.prototype, {
  // 注册axios请求为vue的原型对象，名称为$http
  $http: {
    value: axios,
    writable: false
  },
  // 注册http请求api为vue的原型对象，名称为$api
  $api: {
    value: API,
    writable: false
  }
})

Vue.use(infiniteScroll)

// 注册axios请求为vue的原型，原型名称为$http
// Vue.prototype.$http = axios

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
