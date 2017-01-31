class Api::AlbumsController < Api::ApiController

  def index
    render json: Album.all.order('view_count DESC')
  end
end
