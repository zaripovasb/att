module UsersHelper
	def get_user_location
		remote_ip = request.remote_ip
		location = Geokit::Geocoders::MultiGeocoder.geocode(remote_ip)
		#@user_location = Geokit::LatLng.create(params[:lat], params[:lang])
	end
	def get_user_ip
		remote_ip = request.remote_ip
	end
end
