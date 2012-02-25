class CatsController < ApplicationController
  def index
    if params[:keyword].nil? || params[:keyword] == ""  then
      keyword = "cat"
    else
      keyword = params[:keyword]
    end

    @media_tag = Instagram.tag_recent_media( keyword, {
      :count => 30
    })

    @next_max_id = @media_tag.pagination.next_max_id
    @next_min_id = @media_tag.pagination.next_min_id
    @keyword = keyword
  end
end
