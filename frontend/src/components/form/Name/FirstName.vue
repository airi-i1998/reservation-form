<script setup>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

const props = defineProps(["firstName"]);

const formStore = useFormStore();
const formFirstName = ref(props.firstName);

const updateFirstName = (event) => {
  formStore.firstName = event.target.value;
};
</script>

<template>
  <div class="name name-margin">
    <label class="name-label">姓</label>
    <input
      v-model="formFirstName"
      @input="updateFirstName"
      class="name-input"
    />
  </div>
</template>
../../../stores/form
