class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def edit
    @ad = Ad.find(params[:id])
  end
  
  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)

    if @ad.save
      redirect_to @ad
    else
      flash[:Error!] = "Be sure to fill out first all fields."
      redirect_to new_ad_path
    end
  end

  def update
    @ad = Ad.find(params[:id])

    if @ad.update(ad_params)
      redirect_to @ad
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete
  end

  private
    def ad_params
      params.require(:ad).permit(:text, :id)
    end

end
