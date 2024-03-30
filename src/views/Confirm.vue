<script setup>
import { useFormStore } from "@/stores/form";
import { storeToRefs } from "pinia";
import router from "@/router.ts";
import liff from "@line/liff";

const { date, reservationTime, lastName, firstName, lastKanaName, firstKanaName, address } = storeToRefs(
  useFormStore()
);

const fullName = lastName.value + ' ' + firstName.value + ' ' + '(' + lastKanaName.value + ' ' + firstKanaName.value + ')';

const sendMessage = async () => {
  try {
    await liff.sendMessages([
      {
        type: "text",
        text: `予約内容\n来場希望日：${date.value}\n来場希望日：${ reservationTime.value }\nお名前：${lastName.value} ${firstName.value} (${lastKanaName.value} ${firstKanaName.value})\nメールアドレス：${ address.value }`
      },
    ]);
    console.log("message sent");
  } catch (err) {
    console.log("error", err);
  }
};

const toReservePage = () => {
  router.push("/");
  sendMessage();
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
