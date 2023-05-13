class PurchasesController < ApplicationController
	before_action :authenticate_user!
	def index
		@purschases = current_user.purchases
	end

	def create
		aircraft_part = AircraftPart.find(params[:aircraft_part_id])
		@purschase = current_user.purchases.new(aircraft_part_id: params[:aircraft_part_id])
		if @purschase.save
			aircraft_part.update(status: false)
			redirect_to purchases_path, notice: 'Successfully purchased'
		else
			redirect_to purchases_path, alert: @purschase.errors.full_messages
		end
	end
end
