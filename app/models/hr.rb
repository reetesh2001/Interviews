class Hr < ApplicationRecord
    has_secure_password
    has_many :candidates
    has_many :employees
    has_many :intervs
    validates :email, presence: true, uniqueness:true
    validates :phone_number, presence: true,uniqueness:true, format: { with: /\A\d{10}\z/, message: "must be 10 digits long" }
end
