<script setup>
import Date from "@/components/form/Date.vue";
import ReservationTime from "@/components/form/ReservationTime.vue";
import FirstName from "@/components/form/Name/FirstName.vue";
import LastName from "@/components/form/Name/LastName.vue";
import FirstKanaName from "@/components/form/KanaName/FirstKanaName.vue";
import LastKanaName from "@/components/form/KanaName/LastKanaName.vue";
import Address from "@/components/form/Address.vue";
import { useFormStore } from "@/stores/form";
import { storeToRefs } from "pinia";
import router from "@/router.ts";


const formStore = useFormStore();
const { date } = storeToRefs(formStore);
const { reservationTime } = storeToRefs(formStore);
const { firstName } = storeToRefs(formStore);
const { lastName } = storeToRefs(formStore);
const { firstKanaName } = storeToRefs(formStore);
const { lastKanaName } = storeToRefs(formStore);
const { address } = storeToRefs(formStore);

const toConfirmPage = () => {
  router.push("confirm");
};
</script>

<template>
  <!-- 全体 -->
  <main>
    <p class="title">イベント来場 予約フォーム</p>
    <!-- フォーム -->
    <form>
      <Date :date="date" />
      <ReservationTime :reservationTime="reservationTime" />
      <!-- 姓名全体 -->
      <div class="form-width">
        <div class="name-container">
          <FirstName :firstName="firstName" />
          <LastName :lastName="lastName" />
        </div>
      </div>
      <div class="form-width">
        <div class="name-container">
          <FirstKanaName :firstKanaName="firstKanaName" />
          <LastKanaName :lastKanaName="lastKanaName" />
        </div>
      </div>
      <Address :address="address" />
      <a href="">個人情報取り扱いについて</a>
      <a href="">プライバシーポリシー</a>
      <button @click="toConfirmPage">同意して予約する</button>
      <a href="">戻る</a>
    </form>
  </main>
</template>

<style>
/* 全体 */
main {
  width: 100%;
  overflow-x: hidden;
}

.title {
  margin-top: 5%;
  font-size: 25px;
  font-weight: bold;
  text-align: center;
}

/* フォーム */
form {
  display: flex;
  flex-flow: column;
  width: fit-content;
  margin: auto;
  justify-content: center;
}

.form-width {
  width: 90%;
  margin: 0 auto;
}

.form-label {
  display: block;
  margin-top: 15px;
  margin-bottom: 5px;
}

.form-input {
  margin-bottom: 15px;
}

input {
  height: 20px;
  width: 100%;
}

/* 姓名全体 */
.name-container {
  display: flex;
  margin-bottom: 15px;
}

.name {
  width: 50%;
}

.name-label {
  display: block;
  margin-top: 15px;
  margin-bottom: 5px;
}

.name-input {
  margin-right: 10px;
}

.name-margin {
  margin-right: 20px;
}

a {
  text-align: center;
  margin: 10px 0;
}

button {
  width: 100%;
  height: 40px;
  margin: 15px 0;
  color: white;
  background-color: black;
  border-radius: 5px;
}
</style>
