class AddPoundsAndOuncesToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :pounds, :integer
    add_column :packages, :ounces, :integer
  end
end
