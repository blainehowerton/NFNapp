class UsersController < ApplicationController
#before_action :set_user, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!

	def index
		@users = User.all
  end

	def show
	@user = User.find(params[:id])
	@contact = Contact.find_by(contact_params[:webid])
	@contacts = Contact.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
      redirect_to @user
    else
      flash[:Error!] = "Be sure to fill out first all fields."
      redirect_to new_user_path
    end
	end


	def edit
  @user = User.find(user_params[:id])
  @contacts = Contact.all
  #  @contact = Contact.find(params[:userid] = params[:id] )
  end

  def update
    #@user = User.find("2")
    @user = User.find(params[:id])
   @contact = Contact.find_by(contact_params[:webid])
    #@user.contactid = user_params[:contactid]

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
  end
	end


	def edtion
	end

	def sign_out
	end


	private
    def user_params
      params.permit(:user, :id, :contactid, :email)
    end

    def contact_params
    	params.permit(:id, :userid)
    end

end
