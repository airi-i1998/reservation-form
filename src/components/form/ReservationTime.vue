<script>
import { ref } from 'vue';
import { useFormStore } from "@/stores/form";

export default {
  props: ['reservationTime'],

  setup(props) {
    const formStore =useFormStore();
    const formReservationTime = ref(props.reservationTime);

    const updateReservationTime = (event) => {
      formStore.reservationTime = event.target.value;
    };
    
    return{ formReservationTime, updateReservationTime}
  }
}
</script>

<template>
  <div class="form-input">
    <label>来日希望時間</label>
    <select v-model="formReservationTime" @input="updateReservationTime">
      <option></option>
      <option>10:00~11:00</option>
      <option>11:00~12:00</option>
      <option>12:00~13:00</option>
      <option>13:00~14:00</option>
      <option>14:00~15:00</option>
    </select>
  </div>
</template>