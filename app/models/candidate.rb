class Candidate < ApplicationRecord
    belongs_to :hr
    has_one :interv
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true,uniqueness:true, format: { with: /\A\d{10}\z/ }
end
