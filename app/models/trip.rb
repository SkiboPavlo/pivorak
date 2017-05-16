class Trip < ApplicationRecord
  validates :city_from, :city_to, :date_when_go, :date_when_arrived, :tickets_count, presence: true
  has_many :tickets, dependent: :destroy

  # def admin?
  #   current_user.role == "admin"
  # end

  # def search(search)
  #   if search
  #     where('name LIKE ?', "%#{search}%")
  #   else
  #     scoped
  #   end
  # end
end
