class User < ApplicationRecord
    has_secure_password
    has_many :trips, dependent: :destroy
    has_many :destinations, through: :trips, dependent: :destroy
    #has_many :restaurants, through: :destinations
    
    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['first_name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)
        end
    end
    validates :username, presence: true, uniqueness: true 
end
