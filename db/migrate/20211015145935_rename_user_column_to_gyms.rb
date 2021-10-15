class RenameUserColumnToGyms < ActiveRecord::Migration[6.1]
  def change
    rename_column :gyms, :user, :user_id
  end
end
