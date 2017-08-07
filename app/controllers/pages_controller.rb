class PagesController < ApplicationController
  def home
    @krissi = Krissi.first
    @samples = Sample.all.order(id: :asc)
  end
end
