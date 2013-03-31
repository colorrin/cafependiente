class CafeteriasController < ApplicationController
  def index
  	@shops = Shop.all

  	respond_to do |format|
      format.html 
      format.json { render json: @shop }
    end
  end

  def new
  	 @shop = Shop.new(params[:survey])

    respond_to do |format|
      if @shop.save
        format.html
        format.json { render json: @shop, status: :created, location: @shop }
      else
        format.html
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
  	end
  end
end
