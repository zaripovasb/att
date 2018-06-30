module UsersHelper
	def get_user_ip
		@remote_ip = request.remote_ip
		#@user_location = Geokit::LatLng.create(params[:lat], params[:lang])
	end
end
