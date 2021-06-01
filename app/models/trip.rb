class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :destination
    #has_many :restaurants, through: :destination
    validates :name, uniqueness: true, presence: true
end
