class User < ApplicationRecord
	has_secure_password
	
	validates_presence_of :email, :username
	validates_uniqueness_of :email, :username
		validates :password, length: {minimum: 6, maximum: 30}
	validates_email_format_of :email, message: 'The e-mail format is not correct!'
	validates :username, :password, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
	validates :username, length: {maximum: 30}

	before_create {self.email = email.downcase}
	before_create {self.username = username.downcase}

	def course_list
    # ...
  	end

  	
	def index 
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user
			redirect_to @user
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :avatar)
	end


class Student < ActiveRecord::Base
  include User

  def my_att
  end

end

class Teacher < ActiveRecord::Base
  include User 

  def student_att
  end

  def delete
  end

end


end
