class Hr < ApplicationRecord
    has_secure_password
    has_many :candidates
    has_many :employees
    validates :email, presence: true, uniqueness:true
end
