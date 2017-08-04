class AdminController < ApplicationController
  before_action :set_krissi

  def index
  end

  def update
    if @krissi.update_attributes!(admin_attributes)
      redirect_to admin_index_url
    else
      throw 'INVALID'
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