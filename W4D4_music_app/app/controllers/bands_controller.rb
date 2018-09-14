class BandsController < ApplicationController


  def index
    @bands = Band.all
    render :index
  end

  def new
    @band = Band.new
    render :new
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def create
    p 'creating band'
    @band = Band.new(band_params)

    if @band.save!
      redirect_to band_url(@band)
    else
      render :new
    end
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
