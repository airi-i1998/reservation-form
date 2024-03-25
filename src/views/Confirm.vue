<script setup>
import { storeToRefs } from "pinia";
import { useFormStore } from "@/stores/form";
const { date, reservationTime, lastName, address } = storeToRefs(
  useFormStore()
);
</script>

<template>
  <form>
    <p>予約内容の確認</p>
    <label>以下の内容で変更しますか？</label>
    <div class="item">
      <label>来場希望日</label>
      <label>{{ date }}</label>
    </div>
    <div class="item">
      <label>来場希望時間</label>
      <label>{{ reservationTime }}</label>
    </div>
    <div class="item">
        <label>お名前</label>
        <label>{{ lastName }}</label>
    </div>
    <div class="item">
        <label>メールアドレス</label>
        <label>{{ address }}</label>
    </div class="item">
    <button>同意して予約する</button>
    <a href="">戻る</a>
  </form>
</template>

<style scoped>
.item {
    display: flex;
    flex-flow: column;
}
</style>
