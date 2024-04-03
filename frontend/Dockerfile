# node:20.11.1をベースにコンテナを構築
FROM node:20.11.1
WORKDIR /app
# buildcontext内（ローカルファイルシステム上）の"package.json" , "package-lock.json",カレントディレクトリ内のすべての
COPY ["package.json" , "package-lock.json", "./"]
# アプリケーションのソースコードコピー
RUN npm install

# ディレクトリの位置が不一致でここでnode-moduが失われる
COPY . /app
RUN npm run build
# 開発サーバーの起動をCMDで実行
CMD ["npm", "run", "dev"]