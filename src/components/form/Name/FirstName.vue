<script>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

export default {
  props: ["firstName"],

  setup(props) {
    const formStore = useFormStore();
    const formFirstName = ref(props.firstName);

    const updateFirstName = (event) => {
        formStore.firstName = event.target.value;
    };

    return{ formFirstName, updateFirstName };
  },
};
</script>

<template>
  <div class="form-input">
    <label>名</label>
    <input v-model="formFirstName" @input="updateFirstName"/>
  </div>
</template>
