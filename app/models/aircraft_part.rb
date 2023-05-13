class AircraftPart < ApplicationRecord
  has_many :purchases, dependent: :destroy
  has_many :users, through: :purchases
end
