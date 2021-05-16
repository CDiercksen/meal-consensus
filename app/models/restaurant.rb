class Restaurant < ApplicationRecord
    belongs_to_many :trips
    belongs_to :destination
end
