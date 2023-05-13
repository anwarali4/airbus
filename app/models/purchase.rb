class Purchase < ApplicationRecord
	belongs_to :user
	belongs_to :aircraft_part
end
