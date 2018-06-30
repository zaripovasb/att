module UsersHelper
	def get_user_location
		@remote_ip = request.remote_ip
		#@user_location = Geokit::LatLng.create(params[:lat], params[:lang])
	end
end
