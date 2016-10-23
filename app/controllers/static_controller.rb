class StaticController < ApplicationController
  def index
  end

  def show
    @telemundo = Telemundo.fetch(params[:category])
  end
end
