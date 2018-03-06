class DesignerindexesController < ApplicationController

  def index
    @designerindexes = current_brand.designers
  end

end
