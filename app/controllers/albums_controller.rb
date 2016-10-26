class AlbumsController < ApplicationController
  def index
    albums = Album.where({artist: params[:artist_id]})
    render json: albums.as_json()
  end
  def show
    album = Album.find(params[:id])
    render json: album.as_json()
  end
  def create
  end
  def destroy
  end
  def update
  end
end