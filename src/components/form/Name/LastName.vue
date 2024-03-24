<script>
import { ref } from 'vue'
import { useFormStore } from "@/stores/form";

export default {
  props: ['lastName'],

  setup(props) {
    const formStore = useFormStore();
    const formLastName = ref(props.lastName);

    const updateLastName = (event) => {
      formStore.lastName = event.target.value;
    };

    return{ formLastName, updateLastName }
  }
}
</script>

<template>
  <div class="form-input">
    <label>姓</label>
    <input v-model="formLastName" @inout="updateLastName"/>
  </div>
</template>