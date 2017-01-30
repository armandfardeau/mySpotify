#app/controllers/albums_controller.rb
class AlbumsController < ApplicationController
  
  before_action :get_album, except: [:index]
  
  def index
    # @albums = Album.where("released_at IS NOT NULL").order(released_at: :desc).all
    
    #On recherche tous les albums publiés
    @albums = Album.published.order(released_at: :desc).all
  end
  
  def show
    #Version pas très propre
    #@album.increment!(:views_count)
    
    #Version propre
    @album.youhouuu_new_visit
  end
  
  private
    def get_album
      @album = Album.published.find(params[:id])
    end
end
