<script setup>
import { storeToRefs } from "pinia";
import { useFormStore } from "@/stores/form";
const { date, reservationTime, lastName, address } = storeToRefs(
  useFormStore()
);
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
          <p>{{ lastName }}</p>
      </div>
      <div class="item">
          <label>メールアドレス</label>
          <p>{{ address }}</p>
      </div class="item">
      <button>同意して予約する</button>
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
