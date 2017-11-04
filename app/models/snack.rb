class Snack < ApplicationRecord
  has_and_belongs_to_many :machines
end
