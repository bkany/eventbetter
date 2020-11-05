class Event < ApplicationRecord
	belongs_to :admin, class_name: 'User'
	
	validates :title,
		presence: true, 
		length: { minimum: 5, maximum: 140 }
	validates :description, 
		presence: true, 
		length: { minimum: 20, maximum: 1000 }
	validates :start_date, presence: true
	validates :duration, presence: true
	validates :price, presence: true
	validates :location, presence: true
	
	def is_multiple_of_5?
		
	end
	
	def is_started
	
	end
	
end
