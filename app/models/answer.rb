class Answer < ApplicationRecord
	validates :descripcion, presence: true
	belongs_to :user
	belongs_to :question
	has_many :comeanswers
	has_many :voteanswers

	def avotada?(user)
			voteanswers.exists?(user: user)			
	end
end
