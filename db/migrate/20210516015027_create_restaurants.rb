class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|

      t.string :name
      t.string :cuisine
      t.string :dining_experience

      t.boolean :celiac
      t.boolean :adventurous

      t.timestamps
    end
  end
end
