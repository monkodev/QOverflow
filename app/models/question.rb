class Question < ApplicationRecord
	validates :titulo, presence: true
	validates :descripcion, presence: true
	belongs_to :user
	has_many :answers
	has_many :comequestions
	has_many :votequestions

	def self.search(search)
		where("titulo ILIKE ? OR descripcion ILIKE ?","%#{search}%","%#{search}%")
	end

	def qvotada?(user)
			votequestions.exists?(user: user)			
	end
end
