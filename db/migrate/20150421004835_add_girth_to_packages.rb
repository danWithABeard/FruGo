class AddGirthToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :girth, :integer
  end
end
