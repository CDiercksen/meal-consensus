class Trip < ApplicationRecord
    belongs_to :users
    belongs_to :destination
    has_many :restaurants
end
