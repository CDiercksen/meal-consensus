class RemoveBelongstoFromTrips < ActiveRecord::Migration[6.1]
  def change
    remove_column :trips, :belongs_to, :string
  end
end
