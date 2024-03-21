import { createRouter, createWebHistory } from 'vue-router'
import Confirm from "./components/Confirm.vue"

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [ 
    { 
      path: '/confirm',
      name: 'confirm',
      component: Confirm
    }
  ]
})

export default router