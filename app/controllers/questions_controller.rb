class QuestionsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def index
		@question=Question.order(created_at: :desc)
	end
end
