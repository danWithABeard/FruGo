class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :weight

      t.timestamps null: false
    end
  end
end
