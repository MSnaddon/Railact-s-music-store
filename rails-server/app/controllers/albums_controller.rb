class AlbumsController < ApplicationController
  def index
    if params[:artist_id]
      albums = Album.where({artist: params[:artist_id]})
      render json: albums.as_json()
    else
      albums = Album.all
      render json: albums.as_json({
        only: [:id, :name, :cover],
        include: {
          stock: {except: [:created_at, :updated_at, :album_id]}
          }
        })
    end
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