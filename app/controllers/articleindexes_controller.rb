class ArticleindexesController < ApplicationController

  def index
    @articleindexes = current_brand.articles
  end
end
