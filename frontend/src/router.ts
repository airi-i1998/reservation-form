import { createRouter, createWebHistory } from 'vue-router'
import Confirm from './views/Confirm.vue'
import Reserve from './views/Reserve.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [ 
    {
      path: '/',
      name: 'reserve',
      component: Reserve
    },
    { 
      path: '/confirm',
      name: 'confirm',
      component: Confirm
    }
  ]
})

export default router;