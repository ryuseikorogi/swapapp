class Swap < ApplicationRecord
  has_many :comments, dependent: :destroy
end
