class Pet < ApplicationRecord
  has_many :pictures, as: :imageable
end
