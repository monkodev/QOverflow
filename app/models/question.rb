class Question < ApplicationRecord
	belongs_to :user
	has_many :answer
	has_many :comequestion

	def self.search(search)
		where("titulo ILIKE ? OR descripcion ILIKE ?","%#{search}%","%#{search}%")
	end
end
