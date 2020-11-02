class Event < ApplicationRecord
	belongs_to :user
	
	validates :title,
		presence: true
		
	validates :start_date,
		presence: true

	validates :duration,
		presence: true
		
	validates :price,
		presence: true
		
	validates :location,
		presence: true
		
	validates :user_id,
		presence: true
end
