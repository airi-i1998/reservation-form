<script setup>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

const props = defineProps(["date"]);

const formStore = useFormStore();
const formDate = ref(props.date);

const updateDate = (event) => {
  formStore.date = event.target.value;
};
</script>

<template>
  <div class="form-input">
    <label>来日希望日</label>
    <input v-model="formDate" @input="updateDate" />
  </div>
</template>
