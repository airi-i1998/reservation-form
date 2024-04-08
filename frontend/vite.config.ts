import { fileURLToPath, URL } from 'url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

import path from 'path'

// https://vitejs.dev/config/
export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        main: path.resolve(__dirname, 'index.html')
      }
    }
  },
  plugins: [
    vue(),
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },
  server: {
    hmr: {
      overlay: false,
    },
    host: true,
    port: 8080,
    proxy: {
      '/api': {
        target: 'http://192.167.3.4:3000',
        // ブラウザからのリクエストをプロキシサーバーを介して別のサーバーに転送する設定
        changeOrigin: true,
      }
    }
  }
})
