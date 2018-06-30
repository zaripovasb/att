class ApplicationController < ActionController::Base
	include SessionsHelper
	def remote_ip
	   if request.remote_ip == '127.0.0.1'
	     # Hard coded remote address
	     '123.45.67.89'
	   else
	     request.remote_ip
	   end
	 end
	end

	class MyController < ApplicationController
	 def index
	   @client_ip = remote_ip()
	 end
end
