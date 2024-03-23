<script setup>
import { ref } from 'vue';
import { useFormStore } from "@/stores/form";
const firstName = ref('');
</script>

<template>
    <div class="form-input">
        <label>名</label>
        <input v-model="firstName" />
    </div>
</template>