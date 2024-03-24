<script>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

export default {
  props: ['lastKanaName'],

  setup(props) {
    const formStore = useFormStore();
    const formLastKanaName = ref(props.lastKanaName);

    const updateLastKanaName = (event) => {
      formStore.lastKanaName = event.target.value;
    };

    return{ formLastKanaName, updateLastKanaName };
  },
};
</script>

<template>
  <div class="form-input">
    <label>セイ</label>
    <input v-model="formLastKanaName" @input="updateLastKanaName" />
  </div>
</template>
