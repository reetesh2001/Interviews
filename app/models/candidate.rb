class Candidate < ApplicationRecord
    belongs_to :hr
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true
end
