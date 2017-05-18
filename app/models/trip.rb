class Trip < ApplicationRecord
  validates :city_from, :city_to, :date_when_go, :date_when_arrived, :tickets_count, presence: true
  has_many :tickets, dependent: :destroy

  def self.search(search)
    if search
      where('city_from LIKE ?', search)
    else
      all
    end
  end
end
