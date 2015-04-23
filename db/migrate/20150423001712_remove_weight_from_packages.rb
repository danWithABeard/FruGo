class RemoveWeightFromPackages < ActiveRecord::Migration
  def change
  	remove_column :packages, :weight, :integer
  end
end
