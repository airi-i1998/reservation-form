<script setup>
import { ref } from 'vue';
import { useFormStore } from '@/stores/form';
const firstKanaName = ref('');
</script>

<template>
  <div class="form-input">
    <label>メイ</label>
    <input v-model="firstKanaName" />
  </div>
</template>