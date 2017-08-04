class ParallaxesController < ApplicationController
  before_action :set_parallax

  def edit
  end

  def update
    if @parallax.update_attributes(parallax_params)
      redirect_to admin_url
    else
      throw "INVALID"
    end
  end

  private

  def set_parallax
    @parallax = Parallax.find(params[:id])
  end

  def parallax_params
    params.require(:parallax).permit(:image)
  end
end