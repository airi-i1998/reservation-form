<script setup>
import {  useFormStore } from "../stores/form";
import { ref } from "vue";

const date = ref('');
const time = ref('');
const lastName = ref('');
const firstName = ref('');
const sei = ref('');
const mei = ref('');
const email = ref('')

const formStore =  useFormStore();
const saveData = () => {
  formStore.saveFormData({
    date: date.value,
    time: time.value,
    lastName: lastName.value,
    firstName: firstName.value,
    sei: sei.value,
    mei: mei.value,
    email: email.value,
  });
};
</script>

<template>
  <main>
    <form>
      <p>イベント来場 予約フォーム</p>
      <div class="input">
        <label>来日希望日</label>
        <input v-model="date" class="input-form" />
      </div>
      <div class="input">
        <label>来日希望時間</label>
        <select v-model="time" class="input-form">
          <option></option>
          <option>10:00~11:00</option>
          <option>11:00~12:00</option>
          <option>12:00~13:00</option>
          <option>13:00~14:00</option>
          <option>14:00~15:00</option>
        </select>
      </div>
      <div class="input">
        <label>姓</label>
        <input v-model="lastName" class="input-form" />
        <label>名</label>
        <input v-model="firstName" class="input-form" />
      </div>
      <div class="input">
        <label>セイ</label>
        <input v-model="sei" class="input-form" />
        <label>メイ</label>
        <input v-model="mei" class="input-form" />
      </div>
      <div class="input">
        <label>メールアドレス</label>
        <input v-model="email" class="input-form" />
      </div>
      <span>※ 本イベントに関して、ご連絡させていただく可能性がございます。</span>
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
