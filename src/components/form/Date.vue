<script setup>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";
const formStore = useFormStore();
const date = ref("");
</script>

<template>
  <div class="input">
    <label>来日希望日</label>
    <input v-model="date" class="input-form" />
  </div>
</template>