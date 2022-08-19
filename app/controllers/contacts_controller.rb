class ContactsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @contacts = Contact.all
    #@organizations = Organization.pluck(:name)
    #@organization = Organization.find(contact_params[:organization_id])
    #@contact = Contact.find(params[:organization_id])
    #@organization = Organization.where('id: = @contact.organization_id').take
  end

  def show
    @contact = Contact.find(params[:id])

    @orgid = @contact.organization_id
    if @orgid == nil
      @orgid
    else
      @organization = Organization.find(@orgid) 
    end

    @userid = @contact.userid 
    if @userid == nil
      @contact.userid  = "0"
    else
      @user = User.find(@userid)
    end
  end
    
  def new
    @contact = Contact.new
    @organizations = Organization.all
    @organization_id = params[:organization_id]
  end

  def create
    @contact = Contact.new(contact_params)
    @organizations = Organization.all
    @contact.organization_id = params[:organization_id]

    if @contact.save
      redirect_to @contact
    else
      flash[:Error!] = "Be sure to fill out first and last name fields."
      redirect_to new_contact_path
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    @organizations = Organization.all

  end

  def update
    @contact = Contact.find(params[:id])
    @contact.organization_id = params[:organization_id]

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
      params.require(:contact).permit(:first, :last, :address_1, :address_2, :city, :state, 
        :zip, :primary_phone, :secondary_phone, :email, :userid, :organization_id)
    end

end