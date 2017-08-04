class PagesController < ApplicationController
  def home
    @krissi = Krissi.first
  end
end
