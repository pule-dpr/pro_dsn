import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import issue from '../views/issue'
//导入Details
import Details from '../views/Details.vue'
import Strategy from '../views/Strategy.vue'
import Details1 from '../views/Details1.vue'
import Details2 from '../views/Details2.vue'
import Details3 from '../views/Details3.vue'
import Nocite from '../views/Nocite.vue'
import Condition from '../views/Condition.vue'
import Position from '../views/position'
import Self from '../views/self'
import LogReg from '../views/logreg'
Vue.use(VueRouter)
const routes = [
  {
    path: '/logreg',
    component:LogReg
  },
  {
    path: '/position',
    component: Position
  },
  {
    path: '/self',
    component: Self
  },
  {
    path: '/condition',
    component: Condition
  },
  {
    path: '/nocite',
    component: Nocite
  },
  {
    path: '/details2',
    component: Details2
  },
  {
    path: '/details3',
    component: Details3
  },
  {
    path: '/details1',
    component: Details1
  },
  {
    path: '/strategy',
    component: Strategy
  },
  {
    path: '/details',
    component: Details
  },
  {
    path: '/index',
    name: 'Home',
    component: Home
  },
  {
    path: '/issue',
    name: 'issue',
    component: issue
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
