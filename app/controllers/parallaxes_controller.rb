class ParallaxesController < ApplicationController
  before_action :set_parallax

  def update
    if parallax_params && @parallax.update_attributes(parallax_params)
      flash[:success] = 'Update successful'
      redirect_to admin_url
    else
      flash[:failure] = 'Update failed'
      redirect_to admin_url
    end
  end

  private

  def set_parallax
    @parallax = Parallax.find(params[:id])
  end

  def parallax_params
    return false unless params[:parallax]
    params.require(:parallax).permit(:image)
  end
end