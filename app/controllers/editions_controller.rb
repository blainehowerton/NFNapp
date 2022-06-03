class EditionsController < ApplicationController
  def index
    @editions = Edition.all
  end

  def show
    @edition = Edition.find(params[:id])
  end

  def new
    @edition = Edition.new
  end

  def create
    @edition = Edition.new(edition_params)

    if @edition.save
      redirect_to @edition
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @edition = Edition.find(params[:id])
  end

  def update
    @edition = Edition.find(params[:id])

    if @edition.update(edition_params)
      redirect_to @edition
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @edition = Edition.find(params[:id])
    @edition.destroy

    redirect_to editions_path, status: :see_other
  end

  private
    def edition_params
      params.require(:edition).permit(:title, :issue_date, :url)
    end
end