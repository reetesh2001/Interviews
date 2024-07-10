class Hr < ApplicationRecord
    has_secure_password
    has_many :candidates
    validates :email, presence: true, uniqueness:true
end
