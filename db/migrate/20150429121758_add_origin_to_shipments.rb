class AddOriginToShipments < ActiveRecord::Migration
  def change
    add_column :shipments, :origin_country, :string
    add_column :shipments, :origin_city, :string
    add_column :shipments, :origin_state, :string
    add_column :shipments, :origin_postal_code, :string
  end
end
