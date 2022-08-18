class AdsizesController < ApplicationController
  def index
    @adsizes = Adsize.all
  end

  def edit
    @adsize = Adsize.find(params[:id])
  end

  def show
    @adsize = Adsize.find(params[:id])
  end

  def new
    @adsize = Adsize.new
  end

  def create
    @adsize = Adsize.new(adsize_params)

    if @adsize.save
      redirect_to @adsize
    else
      flash[:Error!] = "Be sure to fill out first all fields."
      redirect_to new_adsize_path
    end
  end

  def update
    @adsize = Adsize.find(params[:id])

    if @adsize.update(adsize_params)
      redirect_to @adsize
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def delete
  end



private
    def adsize_params
      params.require(:adsize).permit(:ad_width, :ad_height, :ad_name, :ad_description)
    end


end
