class AddcolumnToUserUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :profile, :string
  end
end
