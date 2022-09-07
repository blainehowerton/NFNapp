class AdsController < ApplicationController
  def index
    @ads = Ad.all
    @adsizes = Adsize.all
    @organizations = Organization.all
    @editions = Edition.all
  end
  
  def show
    @ads = Ad.all
    @adsizes = Adsize.all
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
    @adsizes = Adsize.all
    @organizations = Organization.all
    @adsize_id = params[:adsize_id]
    @editions = Edition.all
    
    if @adsize_id == nil
      @adsize_id = "0"
    else
      @adsize_id = Adsize.find(@adsize_id)
    end

    if @organization_id == nil
      @organization_id = "0"
    else
      @organization_id = Organization.find(@adsize_id)
    end


  end

  def create
    @ad = Ad.new(ad_params)
    @adsizes = Adsize.all
    @adsize_id = params[:adsize_id]
    @organizations = Organization.all
    @organization_id = params[:organization_id]
    @editions = Edition.all

    if @ad.save
      redirect_to @ad
    else
      flash[:Error!] = "Be sure to fill out first all fields."
      redirect_to new_ad_path
    end
  end

  def edit
    @ad = Ad.find(params[:id])
    @adsizes = Adsize.all
    @organizations = Organization.all
    @editions = Edition.all
  end

  def update
    @ad = Ad.find(params[:id])
    @adsizes = Adsize.all
    @organizations = Organization.all
    @editions = Edition.all

    if @ad.update(ad_params)
      redirect_to @ad
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy

    redirect_to ads_path, status: :see_other
  end

  private
    def ad_params
      params.require(:ad).permit(:organization_id, :date, :edition_id, :section, :notes, 
        :adsize_id, :text)
    end

end
