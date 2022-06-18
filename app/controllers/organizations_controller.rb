class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.limit(100).order ('name ASC')
  end

  def new
    @organization = Organization.new
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def edit
    @organization = Organization.find(params[:id])
    #@editions = Edition.all
    #@sections = Section.all
  end

  def update
    @organization = Organization.find(params[:id])
    #@article.print_date = params[:print_date]
    #@article.section_id = params[:section_id]

    if @organization.update(organization_params)
      redirect_to @organization
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to @organization
    else
      flash[:Error!] = "Be sure to fill out all fields."
      redirect_to new_organization_path
    end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy

    redirect_to organizations_path, status: :see_other
  end
  
  end

  private
    def organization_params
      params.require(:organization).permit(:name, :website)
    end

end
