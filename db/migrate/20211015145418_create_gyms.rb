class CreateGyms < ActiveRecord::Migration[6.1]
  def change
    create_table :gyms do |t|
      t.integer :user
      t.string :gym_name
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
