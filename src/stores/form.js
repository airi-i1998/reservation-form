import { defineStore } from 'pinia'

export const useReserveStore = defineStore('form', {
  state: () => ({
    formData: {}
  }),
  actions: {
    saveFormData(formData) {
      this.formData = formData
    }
  }
})
