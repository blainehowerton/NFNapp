class AdsizesController < ApplicationController
  def index
    @adsizes = AdSizes.all
  end

  def edit
  end

  def show
    @adsize = AdSize.find(params[:id])
  end

  def new
    @adsize = AdSize.new
  end

  def create
    @adsize = AdSize.new(adsize_params)

    if @adsize.save
      redirect_to @adsize
    else
      flash[:Error!] = "Be sure to fill out first all fields."
      redirect_to new_adsize_path
    end
  end

  def delete
  end



private
    def adsize_params
      params.require(:adsize).permit(:ad_width, :ad_height, :ad_name, :ad_description)
    end


end
