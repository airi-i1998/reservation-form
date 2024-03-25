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
    <span>以下の内容で変更しますか？</span>
    <div class="item">
      <span>来場希望日</span>
      <span>{{ date }}</span>
    </div>
    <div class="item">
      <span>来場希望時間</span>
      <span>{{ reservationTime }}</span>
    </div>
    <div class="item">
        <span>お名前</span>
        <span>{{ lastName }}</span>
    </div>
    <div class="item">
        <span>メールアドレス</span>
        <span>{{ address }}</span>
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
