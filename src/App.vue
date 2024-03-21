<script setup>
import { ref } from "vue";
</script>

<template>
  <header>
    <!-- <img
      alt="Vue logo"
      class="logo"
      src="./assets/logo.svg"
      width="125"
      height="125"
    /> -->
  </header>

  <main>
    <form>
      <p>イベント来場 予約フォーム</p>
      <div class="input">
        <lavel>来日希望日</lavel>
        <input v-model="text" class="input-form" />
      </div>
      <div class="input">
        <lavel>来日希望時間</lavel>
        <input v-model="text" class="input-form" />
      </div>
      <div class="input">
        <lavel>姓</lavel>
        <input v-model="text" class="input-form" />
        <lavel>名</lavel>
        <input v-model="text" class="input-form" />
      </div>
      <div class="input">
        <lavel>セイ</lavel>
        <input v-model="text" class="input-form" />
        <lavel>メイ</lavel>
        <input v-model="text" class="input-form" />
      </div>
      <div class="input">
        <lavel>メールアドレス</lavel>
        <input v-model="email" class="input-form" />
      </div>
      <span
        >※ 本イベントに関して、ご連絡させていただく可能性がございます。</span
      >
      <a href="">個人情報取り扱いについて</a>
      <a href="">プライバシーポリシー</a>
      <button>同意して予約する</button>
      <a href="">戻る</a>
    </form>
  </main>
</template>

<style scoped>
main {
  width: 100%;
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
  /* justify-content: space-around; */
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
/* header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }
} */
</style>
