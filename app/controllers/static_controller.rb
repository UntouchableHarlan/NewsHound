class StaticController < ApplicationController
  def index
  end

  def show
    ap params[:category]
  end
end
