class BrandsController < ApplicationController

def index
    @brands = Brand.all.order('created_at DESC')
  end

  def show
    @brand = Brand.find_by name: params[:name]
  end
end
