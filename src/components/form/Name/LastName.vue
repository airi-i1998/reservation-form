<script setup>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

const props = defineProps(["lastName"]);

const formStore = useFormStore();
const formLastName = ref(props.lastName);

const updateLastName = (event) => {
  formStore.lastName = event.target.value;
};
</script>

<template>
  <div class="name">
    <label class="name-label">名</label>
    <input v-model="formLastName" @input="updateLastName" />
  </div>
</template>
