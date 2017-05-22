class QuestionsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def index
		@question=Question.order(created_at: :desc)
	end
	def new
		@question = current_user.question.build
	end
	def create
		@question = current_user.question.build(question_params)
		if @question.save
			redirect_to question_path, notice: "La pregunta se ingreso correctamente"
		else
			render :new
		end
	end
	protected
	def question_params
      params.require(:question).permit(:titulo, :descripcion)
end
end
