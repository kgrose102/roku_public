import { createRouter, createWebHashHistory } from 'vue-router'
import Login from '../views/Login.vue'
import UserSelect from '../views/UserSelect.vue'
import Home from '../views/Home.vue'

const routes = [
  {
    path: '/',
    name: 'Login',
    component: Login
  },

  {
    path: '/UserSelect',
    name: 'UserSelect',
    component: UserSelect,
    param: true
  },

  {
    path: '/Home',
    name: 'UserHome',
    component: Home,
    param: true
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
