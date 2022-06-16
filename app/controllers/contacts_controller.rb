class ContactsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact
    else
      flash[:Error!] = "Be sure to fill out all fields."
      redirect_to new_contact_path
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      redirect_to @contact
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    redirect_to contacts_path, status: :see_other
  end

  private
    def contact_params
      params.require(:contact).permit(:first, :last, :address_1, :address_2, :city, :state, :zip, :primary_phone, :secondary_phone, :email, :userid)
    end
end