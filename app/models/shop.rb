class Shop < ActiveRecord::Base
  belongs_to :country
  belongs_to :city
  attr_accessible :direccion, :email, :geo_coordinates, :name, :phone, :url_facebook, :url_foursquare, :url_web
end
