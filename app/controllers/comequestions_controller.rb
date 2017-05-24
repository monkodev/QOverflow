class ComequestionsController < ApplicationController
		
	def create
		question = Question.find(params[:question_id])
  		question.comequestion.create(comequestion_params)

  		redirect_to question
	end
	
	
	protected
	def comequestion_params
      params.require(:comequestion).permit(:descripcion).merge(user: current_user)
	end
end