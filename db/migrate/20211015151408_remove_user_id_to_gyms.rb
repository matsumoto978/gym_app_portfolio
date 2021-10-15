class RemoveUserIdToGyms < ActiveRecord::Migration[6.1]
  def change
    remove_column :gyms, :user_id, :integer
  end
end
