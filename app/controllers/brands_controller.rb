class BrandsController < ApplicationController

def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find_by name: params[:name]
  end

  def follow
    @brand = Brand.find(params[:id])
      current_user.follow(@brand)
      redirect_to :back
end

def unfollow
  @brand = Brand.find(params[:id])
      current_user.stop_following(@brand)
      redirect_to :back
end
end
