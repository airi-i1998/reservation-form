<script setup>
import { ref } from 'vue';
import { useFormStore } from "@/stores/form";
const address = ref('');
</script>

<template>
  <div class="input">
    <label>メールアドレス</label>
    <input v-model="address" class="input-form" />
    <span>※ 本イベントに関して、ご連絡させていただく可能性がございます。</span>
  </div>
</template>