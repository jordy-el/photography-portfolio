class PagesController < ApplicationController
  def home
    @krissi = Krissi.first
    @samples = Sample.all
  end
end
