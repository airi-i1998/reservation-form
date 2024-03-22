<script setup>
import { ref } from 'vue'
import { useFormStore } from "@/stores/form";
const lastName = ref('')
</script>

<template>
  <label>姓</label>
  <input v-model="lastName" class="input-form" />
</template>