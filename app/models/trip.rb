class Trip < ApplicationRecord
  validates :city_from, :city_to, :departure, :arrival, :tickets_count, presence: true
  has_many :tickets, dependent: :destroy

  def self.search(search)
    if search
      where('city_from LIKE ?', search)
    else
      all
    end
  end
end
