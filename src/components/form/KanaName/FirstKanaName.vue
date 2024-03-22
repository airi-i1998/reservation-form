<script setup>
import { ref } from 'vue';
import { useFormStore } from '@/stores/form';
const firstKanaName = ref('');
</script>

<template>
  <label>メイ</label>
  <input v-model="firstKanaName" class="input-form" />
</template>