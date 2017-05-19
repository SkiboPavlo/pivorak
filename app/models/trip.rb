class Trip < ApplicationRecord
  validates :city_from, :city_to, :tickets_count, :departure, :arrival,  presence: true
  has_many :tickets, dependent: :destroy

  def self.search(by_city, by_date)
    if by_city
      where('city_from LIKE ?', by_city)
    elsif by_date
      where('departure LIKE ?', by_date)
    else
      all
    end
  end
end
