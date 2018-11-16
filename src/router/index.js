import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/page/Home'
import chart from '@/page/charts/index'
import matchMedia from '@/page/matchMedia/index'
import game from '@/page/game'
import products from '@/page/products/index'
import contribute from '@/page/contributeGuide'
import editing from '@/page/editingGuide'
import signIn from '@/page/signIn'
import about from '@/page/about'

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
    },
    {
      path: '/game',
      name: 'game',
      component: game
    },
    {
      path: '/products',
      name: 'products',
      component: products
    },
    {
      path: '/contribute',
      name: 'contribute',
      component: contribute
    },
    {
      path: '/editing',
      name: 'editing',
      component: editing
    },
    {
      path: '/signIn',
      name: 'signIn',
      component: signIn
    },
    {
      path: '/about',
      name: 'about',
      component: about
    }                     
  ]
})
