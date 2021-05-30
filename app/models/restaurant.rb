class Restaurant < ApplicationRecord
    belongs_to :trips
    belongs_to :destination
    validates :name, presence: true
end
