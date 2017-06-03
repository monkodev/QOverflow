class AnswersController < ApplicationController
	def create

		question = Question.find(params[:question_id])
  		h=question.answers.create(answer_params)

  		if h.save
  			redirect_to question
  		else
  			redirect_to question, alert: "ERROR: Respuesta vacía!"
		end
	end
	protected
	def answer_params
      params.require(:answer).permit(:descripcion).merge(user: current_user)
	end
end