<script setup>
import { ref } from "vue";
import { useFormStore } from "@/stores/form";

const props = defineProps(["reservationTime"]);

const formStore = useFormStore();
const formReservationTime = ref(props.reservationTime);

const updateReservationTime = (event) => {
  formStore.reservationTime = event.target.value;
};
</script>

<template>
  <div class="form-width">
    <label class="form-label">来日希望時間</label>
    <select
      v-model="formReservationTime"
      @change="updateReservationTime"
      class="form-input"
    >
      <option></option>
      <option>10:00~11:00</option>
      <option>11:00~12:00</option>
      <option>12:00~13:00</option>
      <option>13:00~14:00</option>
      <option>14:00~15:00</option>
    </select>
  </div>
</template>

<style scoped>
select {
  height: 27px;
  width: 100%;
}
</style>
../../stores/form
