class LocationsController < ApplicationController
	before_action get_user_location
	before_action set_study_place

	private
	def get_user_location
		@user_location = LatLng.create(params[:lat], params[:lang])
	end

	def set_study_place
		@study_place = LatLng.new()
end
