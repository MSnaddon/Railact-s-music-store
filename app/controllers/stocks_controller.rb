class StocksController < ApplicationController
  def index
    stocks = Stock.where({album: params[:album_id]})
    render json: stocks.as_json()
  end
  def show
    stock = Stock.find(params[:id])
    render json: stock.as_json()
  end
  def create
  end
  def destroy
  end
  def update
  end
end