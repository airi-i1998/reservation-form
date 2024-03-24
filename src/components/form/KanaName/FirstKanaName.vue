<script>
import { ref } from 'vue';
import { useFormStore } from '@/stores/form';

export default {
  props: ['firstKanaName'],

  setup(props) {
    const formStore = useFormStore();
    const formFirstKanaName = ref(props.firstKanaName);

    const updateFirstKanaName = (event) => {
      formStore.firstKanaName = event.target.value;
    };
    
    return{ formFirstKanaName, updateFirstKanaName };
  }
}
</script>

<template>
  <div class="form-input">
    <label>メイ</label>
    <input v-model="formFirstKanaName" @input="updateFirstKanaName" />
  </div>
</template>