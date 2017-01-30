#app/controllers/albums_controller.rb
class AlbumsController < ApplicationController
  def index
    # @albums = Album.where("released_at IS NOT NULL").order(released_at: :desc).all
    
    #On recherche tous les albums publiés
    @albums = Album.published.order(released_at: :desc).all
  end
  
  def show
    @album = Album.find(params[:id])
    
    #Version pas très propre
    #@album.increment!(:views_count)
    
    #Version propre
    @album.youhouuu_new_visit
  end
end
