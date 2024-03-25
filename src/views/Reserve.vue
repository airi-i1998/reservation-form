<script setup>
import Date from "@/components/form/Date.vue";
import ReservationTime from "@/components/form/ReservationTime.vue";
import LastName from "@/components/form/Name/LastName.vue";
import FirstName from "@/components/form/Name/FirstName.vue";
import FirstKanaName from "@/components/form/KanaName/FirstKanaName.vue";
import LastKanaName from "@/components/form/KanaName/LastKanaName.vue";
import Address from "@/components/form/Address.vue";
import { useFormStore } from "@/stores/form";
import { storeToRefs } from "pinia";
import router from '@/router.ts';

const formStore = useFormStore();
const { date } = storeToRefs(formStore);
const { reservationTime } = storeToRefs(formStore);
const { lastName } = storeToRefs(formStore);
const { firstName } = storeToRefs(formStore);
const { lastKanaName } = storeToRefs(formStore);
const { firstKanaName } = storeToRefs(formStore);
const { address } = storeToRefs(formStore);

const saveData = () => {
  router.push('confirm');
};
</script>

<template>
  <main>
    <p>イベント来場 予約フォーム</p>
    <form>
      <Date :date="date" />
      <ReservationTime :reservationTime="reservationTime" />
      <LastName :lastName="lastName" />
      <FirstName :firstName="firstName" />
      <LastKanaName :lastKanaName="lastKanaName" />
      <FirstKanaName :firstKanaName="firstKanaName" />
      <Address :address="address" />
      <a href="">個人情報取り扱いについて</a>
      <a href="">プライバシーポリシー</a>
      <button @click="saveData">同意して予約する</button>
      <a href="">戻る</a>
    </form>
  </main>
</template>

<style>
main {
  width: 100%;
  overflow-x: hidden;
}

p {
  font-size: 25px;
  font-weight: bold;
  text-align: center;
}

form {
  display: flex;
  flex-flow: column;
  width: fit-content;
  margin: auto;
  padding: 0 30px;
}

input {
  height: 20px;
}

.form-input {
  display: contents;
}

.form-input::after {
  content: "";
  display: block;
  margin: 10px;
}

a {
  text-align: center;
  margin-top: 5px;
}

label {
  margin-top: 5px;
}

button {
  width: 100%;
  height: 40px;
  margin: 10px 0;
  color: white;
  background-color: black;
}
</style>
