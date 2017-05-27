class QuestionsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def index
		@question=Question.order(created_at: :desc)
		if params[:search]
			@question=Question.search(params[:search]).order(created_at: :desc)
		else
			@question=Question.order(created_at: :desc)
		end
	end
	def new
		@question = current_user.questions.build
	end
	def show
		@question = Question.find(params[:id])
	end
	def create
		@question = current_user.questions.build(question_params)
		if @question.save
			redirect_to questions_path, notice: "La pregunta se ingreso correctamente"
		else
			render :new
		end
	end
	protected
	def question_params
      params.require(:question).permit(:titulo, :descripcion)
end
end
