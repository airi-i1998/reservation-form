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
  <div class="form-input">
    <label>姓</label>
    <input v-model="formLastName" @inout="updateLastName" />
  </div>
</template>
