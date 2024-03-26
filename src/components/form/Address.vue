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
  <div class="form-width">
    <label class="form-label">メールアドレス</label>
    <input v-model="formAddress" @input="updateAddress" class="form-input" />
    <p class="attention">
      ※ 本イベントに関して、ご連絡させていただく可能性がございます。
    </p>
  </div>
</template>

<style scoped>


.attention {
  font-size: small;
}
</style>
