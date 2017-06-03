class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :encrypted_password, presence: true
  validates :email, uniqueness: {case_sensitive: false ,message: "Ese mail ya fue registrado"}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questions
  has_many :answers
  has_many :votequestions
  has_many :voteanswers
end
