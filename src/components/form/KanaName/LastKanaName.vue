<script setup>
import { ref } from 'vue';
import { useFormStore } from "@/stores/form";
const lastKanaName = ref('');
</script>

<template>
  <div class="form-input">
    <label>セイ</label>
    <input v-model="lastKanaName" />
  </div>
</template>