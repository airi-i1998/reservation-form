import { defineStore } from 'pinia'

export const useFormStore  = defineStore('form', {
  state: () => ({
    formData: {}
  }),
  actions: {
    saveFormData(formData) {
      this.formData = formData
    }
  }
})
