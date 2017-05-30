class VotequestionsController < ApplicationController
	def create
	  question = Question.find(params[:question_id])
	  question.votequestions.create(user: current_user)

	  redirect_to question_path(params[:question_id])
	end

	def destroy
	  question = Question.find(params[:question_id])
	  question.votequestions.where(user: current_user).take.try(:destroy)

	  redirect_to question_path(params[:question_id])
	end
	
end