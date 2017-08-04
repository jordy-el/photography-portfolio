class SamplesController < ApplicationController
  before_action :set_sample, only: [:edit, :update]

  def edit
  end

  def update
    if @sample.update_attributes(sample_params)
      redirect_to admin_url
    else
      throw "INVALID"
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