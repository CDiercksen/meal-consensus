class AddBelongstoToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :belongs_to, :string
  end
end
