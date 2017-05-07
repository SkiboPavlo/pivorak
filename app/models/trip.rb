class Trip < ApplicationRecord
  validates :city_from, :city_to, :date_when_go, :date_when_arrived, :tickets_count, presence: true
end
