class UsersController < ApplicationController
#before_action :set_user, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!

	def index
		@users = User.all
  	end

	def new
    @user = User.new
	end

	def show
	@user = User.find(params[:id])
	@contact = Contact.where(userid: "9")
	#Contact.find(params[:userid])
	end

	private
    def user_params
      params.permit(:email, :userid)
    end

end
