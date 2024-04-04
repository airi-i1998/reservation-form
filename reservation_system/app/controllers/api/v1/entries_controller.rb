module Api
	module V1
    class EntriesController < ApplicationController
			before_action :set_entry,only: [:show, :update, :destroy]

			# Get /entries
			# すべてのエントリーを取得し、JSON形式でレスポンス
			def index
				entries = Entry.all
				render json: { status: 'SUCCESS!', message: 'リクエストが返ってくること確認完了！'}
			end

			# GET /entries/1
			# set_entryメソッドでセットされた特定のエントリーオブジェクトを参照
			def show
				render json: @Entry
			end

			# POST /entries
			# 新しいエントリーオブジェクトを作成
			def create 
				@entry = Entry.new(entry_params)

				if @entry.save
					render json: @entry, statue: :created, location: @entry
				else
					render json: @entry.errors, statue: :unprocessable_entry
				end
			end

			def destroy
				@entry.destroy
			end

			private
			def set_entry
				@entry = Entry.find(params[:id])
			end

			def entry_params
				params.require(:entry).permit(:title, :content)
			end
		end
	end
end
