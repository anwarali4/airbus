class DashboardController < ApplicationController
	before_action :authenticate_user!
	def index
		@aircraft_parts= AircraftPart.paginate(page: params[:page])
	end
	
end
