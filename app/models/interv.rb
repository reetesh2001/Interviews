class Interv < ApplicationRecord
    belongs_to :hr
    has_one :candidate
    has_many :employees
end
