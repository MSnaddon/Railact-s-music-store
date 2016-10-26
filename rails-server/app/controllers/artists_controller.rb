class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: artists.as_json(
      only: [:id, :name, :genre],
      include:{
        albums:{
          only:[:id, :name, :cover],
          include:{ 
            stock:{
              except:[:created_at, :updated_at, :album_id]
            }
          }
        }
      }
    )
  end
  def show
    artist = Artist.find(params[:id])
    render json: artist.as_json()
  end
  def create
  end
  def destroy
  end
  def update
  end
end