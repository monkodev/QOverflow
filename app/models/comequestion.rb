class Comequestion < ApplicationRecord
	validates :descripcion, presence: true
	belongs_to :user
	belongs_to :question
end