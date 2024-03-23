<script setup>
import { ref } from 'vue'
import { useFormStore } from "@/stores/form";
const lastName = ref('')
</script>

<template>
  <div class="form-input">
    <label>姓</label>
    <input v-model="lastName" />
  </div>
</template>