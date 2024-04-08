<script setup>
import { useFormStore } from "@/stores/form";
import { storeToRefs } from "pinia";
import router from "@/router.ts";
// import liff from "@line/liff";
import axios from 'axios'

const {
  date,
  reservationTime,
  firstName,
  lastName,
  firstKanaName,
  lastKanaName,
  address,
} = storeToRefs(useFormStore());

const fullName = firstName.value + " " + lastName.value ;
const fullNameKana = firstKanaName.value + " " + lastKanaName.value ;

const sendFlexMessage = async () => {
  try {
    // RailsコントローラのエンドポイントにPOSTリクエストを送信
    const response = await axios.post('/api/v1/line_messages');
    console.log('Message sent successfully:', response.data);
  } catch (error) {
    console.error('Failed to send message:', error.response.data);
  }
};

const submitReservation = async () => {
  try {
    const response = await fetch('/api/v1/entries', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        "entry": {
        "date": date.value,
        "reservation_time": reservationTime.value,
        "first_name": firstName.value,
        "last_name": lastName.value,
        "first_name_kana": firstKanaName.value,
        "last_name_kana": lastKanaName.value,
        "email": address.value
        }
      })
    });

    if (!response.ok) {
      throw new Error('POSTリクエストが失敗しました');
    }

    const responseData = await response.json();
    console.log('Response data:', responseData);
    await sendFlexMessage();
  } catch (error) {
    console.error('POSTリクエスト時にエラーが発生しました:', error);
  }
};

const toReservePage = () => {
  router.push("/");
  submitReservation();
};
</script>

<template>
  <main>
    <p class="title">予約内容の確認</p>
    <form>
      <p>以下の内容で変更しますか？</p>
      <div class="item">
        <label>来場希望日</label>
        <p>{{ date }}</p>
      </div>
      <div class="item">
        <label>来場希望時間</label>
        <p>{{ reservationTime }}</p>
      </div>
      <div class="item">
        <label>お名前</label>
        <p>{{ fullName }}</p>
      </div>
      <div class="item">
        <label>フリガナ</label>
        <p>{{ fullNameKana }}</p>
      </div>
      <div class="item">
        <label>メールアドレス</label>
        <p>{{ address }}</p>
      </div>
      <button @click="toReservePage">同意して予約する</button>
      <a href="">戻る</a>
    </form>
  </main>
</template>

<style scoped>
.item {
  display: flex;
  flex-flow: column;
}
</style>
