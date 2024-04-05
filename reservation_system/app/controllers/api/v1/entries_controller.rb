module Api
	module V1
    class EntriesController < ApplicationController
			skip_before_action :verify_authenticity_token
			
			def index
				entries = Entry.all
				render json: { status: 'SUCCESS!', message: 'リクエストに対する結果取得確認完了！'}
			end
			# POST /entries
			# 新しいエントリーオブジェクトを作成
			def create 
				@entry = Entry.new(entry_params)

				Rails.logger.info("Received parameters: #{entry_params}")

				if @entry.save
					render json: @entry, status: :created
				else
					render json: { errors: @entry.errors.full_messages }, status: :unprocessable_entry
				end
			end

			private
			def entry_params
				params.require(:entry).permit(:date, :reservation_time, :first_name, :last_name, :first_name_kana, :last_name_kana, :email)
			end
		end
	end
end
