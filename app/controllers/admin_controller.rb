class AdminController < ApplicationController
  before_action :set_krissi

  def index; end

  def update
    if @krissi.update_attributes!(admin_attributes)
      flash[:success] = 'Update successful'
      redirect_to admin_url
    else
      flash[:failure] = 'Update failed'
      redirect_to admin_url
    end
  end

  private

  def set_krissi
    @krissi = Krissi.first
  end

  def admin_attributes
    params.require(:krissi).permit(:linkedin, :instagram, :facebook, :contact_body, :bio_body, :bio_image)
  end
end