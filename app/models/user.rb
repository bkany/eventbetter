class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	
	has_many :events
	has_many :attendances
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	
	validates :first_name,
		presence: true
	
	validates :last_name,
		presence: true
	
	validates :encrypted_password,
		presence: true
	
	validates :email,
		presence: true,
		uniqueness: { case_sensitive: false },
		length: { minimum: 4, maximum: 254 },
		format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please enter a valide email"  }
		
		after_create :welcome_send
		
		def welcome_send
			UserMailer.welcome_email(self).deliver_now
		end
	
end
