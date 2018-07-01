module UsersHelper
	def get_user_location
		remote_ip = request.remote_ip
		location = Geokit::Geocoders::MultiGeocoder.geocode(remote_ip.to_s)
		#@user_location = Geokit::LatLng.create(params[:lat], params[:lang])
	end
end
