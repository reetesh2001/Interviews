class Employee < ApplicationRecord
  belongs_to :hr
  has_many :intervs
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true,uniqueness:true, format: { with: /\A\d{10}\z/ }
end
