class Attendance < ApplicationRecord
	validates_presence_of :user_id
	
end
