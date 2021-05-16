class Trip < ApplicationRecord
    belongs_to_many :users
    belongs_to :destinations
    has_many :restaurants
end
