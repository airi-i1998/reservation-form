import "./assets/main.css";

import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import { createPinia } from "pinia";
import { useLineLoginStore } from "@/stores/lineLoginStore"

const vueApp = createApp(App)
const vueAppInit = () => {
    vueApp
    .use(router)
    .mount('#app')
}

const initializeApplication = async () => {
    vueApp.use(createPinia())
    useLineLoginStore();
    vueAppInit()
}

initializeApplication()
