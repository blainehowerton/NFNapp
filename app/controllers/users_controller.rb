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
	#@cfields = User.joins(:contact).where(params[:id] == params[:userid])
	#this one displays all contacts, regardless of user id
	@cfields = Contact.where(params[@user.id] = params[contact: :userid] )
	#this one displays all contacts, regardless of user id
	#@cfields = Contact.where(params[:id] == params[contact: :id] )
	end

	def sign_out
	end


	private
    def user_params
      params.permit(:userid, :id, :cf)
    end

end
