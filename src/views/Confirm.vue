<script setup>
import { computed } from "vue";
import {  useFormStore } from "../stores/form";

const formStore =  useFormStore();
const formData = formStore.formData

</script>

<template>
    <form>
        <p>予約内容の確認</p>
        <span>以下の内容で変更しますか？</span>
        <span>来場希望日</span>
        <span>{{ formData.date }}</span>
        <span>来場希望時間</span>
        <span>{{ formData.time }}</span>
        <span>お名前</span>
        <span>{{ formData.lastName }}</span>
        <span>メールアドレス</span>
        <span>{{ formData.email }}</span>
        <button>同意して予約する</button>
        <a href="">戻る</a>
    </form>
</template>