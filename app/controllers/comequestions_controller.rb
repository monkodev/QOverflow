class ComequestionsController < ApplicationController
		
	def create
		question = Question.find(params[:question_id])
  		h=question.comequestions.create(comequestion_params)
  		if h.save
  			redirect_to question
  		else
  			redirect_to question, alert: "ERROR: Comentario vacío!"
		end
  		
	end
	
	
	protected
	def comequestion_params
      params.require(:comequestion).permit(:descripcion).merge(user: current_user)
	end
end