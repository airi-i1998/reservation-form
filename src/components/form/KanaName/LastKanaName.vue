<script setup>
import { ref } from 'vue';
import { useFormStore } from "@/stores/form";
const lastKanaName = ref('');
</script>

<template>
  <label>セイ</label>
  <input v-model="lastKanaName" class="input-form" />
</template>