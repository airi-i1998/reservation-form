<script setup>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

const props = defineProps(["lastKanaName"]);

const formStore = useFormStore();
const formLastKanaName = ref(props.lastKanaName);

const updateLastKanaName = (event) => {
  formStore.lastKanaName = event.target.value;
};
</script>

<template>
  <div class="name">
    <label class="name-label">セイ</label>
    <input v-model="formLastKanaName" @input="updateLastKanaName" />
  </div>
</template>
