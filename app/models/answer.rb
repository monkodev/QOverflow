class Answer < ApplicationRecord
	belongs_to :user
	has_many :comeanswer
end
