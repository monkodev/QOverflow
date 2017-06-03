class ComeanswersController < ApplicationController
		
	def create
		answer = Answer.find(params[:answer_id])
  		h=answer.comeanswers.create(comeanswer_params)
  		if h.save
  			redirect_to :back
  		else
  			redirect_to :back, alert: "ERROR: Comentario vacío!"
		end
  		
  		
	end
	
	
	protected
	def comeanswer_params
      params.require(:comeanswer).permit(:descripcion).merge(user: current_user)
	end
end