class AddZipsToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :zip_origination, :integer
    add_column :packages, :zip_destination, :integer
  end
end
