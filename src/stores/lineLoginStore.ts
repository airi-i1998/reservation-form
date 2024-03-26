import liff from '@line/liff'
import { defineStore } from 'pinia';

export const useLineLoginStore = defineStore('lineStore',() => {
    const initializeLiff = async () => {
      try {
        await liff.init({
          liffId: '2004329733-wnAEpRAm',
        });
        console.log(liff.isLoggedIn());
        const isLogedIn = liff.isLoggedIn()
        if (!isLogedIn){
            liff.login()
        }
        await liff.sendMessages([
          {
            type: "text",
            text: "メッセージ送信完了",
          },
        ]);
        console.log("message sent");
      } catch (err) {
        console.log("error", err);
      }
    };
    initializeLiff();
})