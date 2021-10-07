class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :profile_image, :string
    add_column :users, :avatar, :string
  end
end