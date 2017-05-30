class Answer < ApplicationRecord
	validates :descripcion, presence: true
	belongs_to :user
	has_many :comeanswer
	has_many :voteanswers

	def avotada?(user)
			voteanswers.exists?(user: user)			
	end
end
