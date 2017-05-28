class Answer < ApplicationRecord
	validates :descripcion, presence: true
	belongs_to :user
	has_many :comeanswer
end
