class PopularsController < ApplicationController
  def index
    @media_popular = Instagram.media_popular
  end

end
