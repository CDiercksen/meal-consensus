class Trip < ApplicationRecord
    belongs_to_many :users
    belongs_to :destination
    has_many :restaurants
end
