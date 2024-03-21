<script setup>
import { ref } from "vue";

const date = ref('')
const selecTime = ref('')
const lastName = ref('')
const firstName = ref('')
const sei = ref('')
const mei = ref('')
const email = ref('')

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
        <label>来日希望日</label>
        <input v-model="date" class="input-form" />
      </div>
      <div class="input">
        <label>来日希望時間</label>
        <select v-model="selecTime" class="input-form">
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
        <button>同意して予約する</button>
      </router-link>
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
