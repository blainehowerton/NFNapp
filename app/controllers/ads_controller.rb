class AdsController < ApplicationController
  def index
    @ads = Ad.all
    @adsizes = Adsize.all
    @adsizename = "ad size name will go here"
  end
  
  def show
    @ads = Ad.all
    @adsizes = Adsize.all
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
    @adsizes = Adsize.all
    @adsize_id = params[:adsize_id]
    if @adsize_id == nil
      @adsize_id = "0"
    else
      @adsize_id = Adsize.find(@adsize_id)
    end
  end

  def create
    @ad = Ad.new(ad_params)
    @adsizes = Adsize.all
    @adsize_id = params[:adsize_id]

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
  end

  def update
    @ad = Ad.find(params[:id])

    if @ad.update(ad_params)
      redirect_to @ad
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private
    def ad_params
      params.require(:ad).permit(:organization, :date, :edition, :section, :notes, 
        :adsize_id, :text)
    end

end
