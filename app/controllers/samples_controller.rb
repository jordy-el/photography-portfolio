class SamplesController < ApplicationController
  before_action :set_sample

  def update
    if @sample.update_attributes(sample_params)
      flash[:success] = 'Update successful'
      redirect_to admin_url
    else
      flash[:failure] = 'Update failed'
      redirect_to admin_url
    end
  end

  private

  def set_sample
    @sample = Sample.find(params[:id])
  end

  def sample_params
    params.require(:sample).permit(:caption, :category, :alt, :image)
  end
end