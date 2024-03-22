<script setup>
import { ref } from 'vue';
import { useFormStore } from "@/stores/form";
const reservationTime = ref('')
</script>

<template>
  <div class="input">
    <label>来日希望時間</label>
    <select v-model="reservationTime" class="input-form">
      <option></option>
      <option>10:00~11:00</option>
      <option>11:00~12:00</option>
      <option>12:00~13:00</option>
      <option>13:00~14:00</option>
      <option>14:00~15:00</option>
    </select>
  </div>
</template>