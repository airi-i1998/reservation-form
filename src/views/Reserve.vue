<script setup>
import Date from "@/components/form/Date.vue";
import ReservationTime from "@/components/form/ReservationTime.vue";
import LastName from "@/components/form/Name/LastName.vue";
import FirstName from "@/components/form/Name/FirstName.vue";
import FirstKanaName from "@/components/form/KanaName/FirstKanaName.vue";
import LastKanaName from "@/components/form/KanaName/LastKanaName.vue";
import Address from "@/components/form/Address.vue";
import { useFormStore } from "@/stores/form";
import { storeToRefs } from 'pinia'

const formStore = useFormStore();
const saveData = () => {
  formStore.saveFormData({
    date: date.value,
    reservationTime: reservationTime.value,
    lastName: lastName.value,
    firstName: firstName.value,
    lastKanaName: lastKanaName.value,
    firstKanaName: firstKanaName.value,
    address: address.value,
  });
};
</script>

<template>
  <main>
    <form>
      <p>イベント来場 予約フォーム</p>
      <Date />
      <ReservationTime />
      <LastName />
      <FirstName />
      <LastKanaName />
      <FirstKanaName />
      <Address />
      <a href="">個人情報取り扱いについて</a>
      <a href="">プライバシーポリシー</a>
      <router-link to="/confirm">
        <button @click="saveData">同意して予約する</button>
      </router-link>
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
  width: 80%;
  display: flex;
  flex-flow: column;
  justify-content: center;
  margin: 10%;
}

.input {
  display: contents;
  margin: 20px;
}

.input-form {
  width: 80%;
}
a {
  place-items: center;
}
</style>
