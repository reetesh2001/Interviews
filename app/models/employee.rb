class Employee < ApplicationRecord
  belongs_to :hr
  validates :email, presence: true, uniqueness: true
end
