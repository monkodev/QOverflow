class ComeanswersController < ApplicationController
		
	def create
		answer = Answer.find(params[:answer_id])
  		answer.comeanswers.create(comeanswer_params)
  		
  		redirect_to :back
	end
	
	
	protected
	def comeanswer_params
      params.require(:comeanswer).permit(:descripcion).merge(user: current_user)
	end
end