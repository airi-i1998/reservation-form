<script setup>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

const props = defineProps(["address"]);

const formStore = useFormStore();
const formAddress = ref(props.address);

const updateAddress = (event) => {
  formStore.address = event.target.value;
};
</script>

<template>
  <div class="form-input">
    <label>メールアドレス</label>
    <input v-model="formAddress" @input="updateAddress" />
    <span>※ 本イベントに関して、ご連絡させていただく可能性がございます。</span>
  </div>
</template>
