import liff from '@line/liff'
import { defineStore } from 'pinia';

export const useLineLoginStore = defineStore('loginStore',() => {
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
      } catch (err) {
        console.log("error", err);
      }
    };
    initializeLiff();
})