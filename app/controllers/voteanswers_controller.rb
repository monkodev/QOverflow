class VoteanswersController < ApplicationController
	def create
	  answer = Answer.find(params[:question_id])
	  answer.voteanswers.create(user: current_user)

	  redirect_to :back
	end

	def destroy
	  answer = Answer.find(params[:question_id])
	  answer.voteanswers.where(user: current_user).take.try(:destroy)

	   redirect_to :back
	end
	
end