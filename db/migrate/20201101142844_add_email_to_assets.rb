class AddEmailToAssets < ActiveRecord::Migration[6.0]
  def change
    add_column :assets, :email, :string
  end
end
