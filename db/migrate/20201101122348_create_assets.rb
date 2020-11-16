# frozen_string_literal: true

class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :owner
      t.string :address
      t.integer :rooms
      t.integer :sqmt
      t.integer :units
      t.integer :shops
      t.integer :parking
      t.integer :floors
      t.boolean :air_cond
      t.decimal :price, precision: 10, scale: 2
      t.string :type

      t.timestamps
    end
  end
end
