class Comeanswer < ApplicationRecord
	validates :descripcion, presence: true
	belongs_to :user
	belongs_to :answer
end