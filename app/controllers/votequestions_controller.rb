class VoteQuestionsController < ApplicationController
	def create
	  question = Question.find(params[:question_id])
	  question.votequestions.create(user: current_user)

	  redirect_to root_path
	end

	def destroy
	  question = Question.find(params[:question_id])
	  question.votequestions.where(user: current_user).take.try(:destroy)

	  redirect_to root_path
	end
	
end