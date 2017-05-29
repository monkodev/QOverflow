class VoteAnswersController < ApplicationController
	def create
	  answer = Answer.find(params[:answer_id])
	  answer.votes.create(user: current_user)

	  redirect_to root_path
	end

	def destroy
	  answer = Answer.find(params[:answer_id])
	  answer.votes.where(user: current_user).take.try(:destroy)

	  redirect_to root_path
	end
	
end