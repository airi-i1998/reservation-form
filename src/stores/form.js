import { defineStore } from 'pinia'
import { ref } from 'vue'

export const useFormStore  = defineStore('form', {
  state: () => ({
    date: ref(''),
    reservationTime: ref(''),
    lastName: ref(''),
    firstName: ref(''),
    lastKanaName: ref(''),
    firstKanaName: ref(''),
    address: ref(''),
  }),
})
