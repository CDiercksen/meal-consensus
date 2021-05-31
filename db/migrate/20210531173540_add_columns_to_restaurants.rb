class AddColumnsToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :trip_id, :integer
    add_column :restaurants, :destination_id, :integer
  end
end
