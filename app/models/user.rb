class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	
	has_many :events, through: :attendances
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :encrypted_password, presence: true
	
	validates :email,
		presence: true,
		format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please enter a valide email"  }
		
		#after_create :welcome_send
		
		#def welcome_send
		#	UserMailer.welcome_email(self).deliver_now
		#end
	
end
