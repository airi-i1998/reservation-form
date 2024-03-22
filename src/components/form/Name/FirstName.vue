<script setup>
import { ref } from 'vue';
import { useFormStore } from "@/stores/form";
const firstName = ref('');
</script>

<template>
    <label>名</label>
    <input v-model="firstName" class="input-form" />
</template>