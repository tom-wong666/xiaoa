import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/page/Home'
import chart from '@/page/charts/index'
import matchMedia from '@/page/matchMedia/index'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/chart',
      name: 'chart',
      component: chart
    },
    {
      path: '/matchMedia',
      name: 'matchMedia',
      component: matchMedia
    }         
  ]
})
