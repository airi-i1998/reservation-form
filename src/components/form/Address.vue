<script>
import { ref } from 'vue';
import { useFormStore } from '@/stores/form';

export default {
  props: ['address'],

   setup(props) {
    const formStore = useFormStore();
    const formAddress = ref(props.address);

    const updateAddress = (event) => {
      formStore.address = event.target.value;
    };

    return{ formAddress, updateAddress };
   }
}
</script>

<template>
  <div class="form-input">
    <label>メールアドレス</label>
    <input v-model="formAddress" @input="updateAddress"/>
    <span>※ 本イベントに関して、ご連絡させていただく可能性がございます。</span>
  </div>
</template>