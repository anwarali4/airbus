class AircraftPartsController < ApplicationController
	before_action :authenticate_user!
	def index
		@aircraft_parts= AircraftPart.paginate(page: params[:page])
	end

	def show
		@aircraft_part = AircraftPart.find(params[:id])
	end
end


