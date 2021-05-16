class User < ApplicationRecord
    has_many :trips
    has_many :restaurants, through: :trips
end
