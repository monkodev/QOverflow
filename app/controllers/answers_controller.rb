class AnswersController < ApplicationController
	def create
		question = Question.find(params[:question_id])
  		question.answer.create(answer_params)

  		redirect_to question
	end
	
	protected
	def answer_params
      params.require(:answer).permit(:descripcion).merge(user: current_user)
	end
end
