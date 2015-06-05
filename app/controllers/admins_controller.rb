class AdminsController < ApplicationController
	def new_user
		#@user = Users.new
	end
	def create_user
		@user = User.create(user_params)
		if @user.save
		#success
		else
		#error
		#end
	end
	def user_params
		params.requiere(:user).permit(:name,:email,:password,:password_confirmation)
end