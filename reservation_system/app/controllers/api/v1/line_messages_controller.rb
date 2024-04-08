module Api
	module V1
    class LineMessagesController < ApplicationController
      skip_before_action :verify_authenticity_token
      # LINE Messaging APIを利用するためのライブラリをロード
      require 'line/bot'
      # 定義されたメソッド名
      def send_flex_message
        # FlexメッセージのJSONファイルを読み込む
        file_path = Rails.root.join('./message_template/line/after.json')
        flex_message = JSON.parse(File.read(file_path))
        access_token = ENV['LINE_CHANNEL_ACCESS_TOKEN']
        # LINE Bot Clientの作成
        client = Line::Bot::Client.new { |config|
        config.channel_id = ENV['CHANNEL_ID']
        config.channel_secret = ENV['LINE_CHANNEL_SECRET']
        config.channel_token = access_token
      }

        # メッセージを送信する
        response = client.push_message('U4ffb3fbde8ecc6d6820a625f91179b2e', flex_message)
        p response.message
        p flex_message
        Rails.logger.error("ここまで返ってきてる")
        if response&.code == '200'
          render json: { message: 'Flexメッセージを送信しました' }, status: :ok
        else
          render json: { error: 'Flexメッセージの送信に失敗しました' }, status: :unprocessable_entity
        end
      end
    end
  end
end

