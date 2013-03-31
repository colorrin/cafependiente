class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.text :name
      t.text :direccion
      t.references :country
      t.references :city
      t.text :url_web
      t.text :url_facebook
      t.text :url_foursquare
      t.text :phone
      t.text :email
      t.text :geo_coordinates

      t.timestamps
    end
    add_index :shops, :country_id
    add_index :shops, :city_id
  end
end
