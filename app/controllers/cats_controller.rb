class CatsController < ApplicationController
  def index
    @media_tag = Instagram.tag_recent_media('cat', {
      :count => 30
    })
    @next_max_id = @media_tag.pagination.next_max_id
    @next_min_id = @media_tag.pagination.next_min_id
  end
end
