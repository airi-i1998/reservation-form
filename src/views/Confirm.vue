<script setup>
const store = useStore()
const formData = store.getters.formData
</script>

<template>
    <form>
        <p>予約内容の確認</p>
        <span>以下の内容で変更しますか？</span>
        <span>来場希望日</span>
        <p>{{ formData.date }}</p>
        <span>来場希望時間</span>
        <p>{{ formData.time }}</p>
        <span>お名前</span>
        <p>{{ formData.name }}</p>
        <span>メールアドレス</span>
        <p>{{ formData.email }}</p>
        <button>同意して予約する</button>
        <a href="">戻る</a>
    </form>
</template>