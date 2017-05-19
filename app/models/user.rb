class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable,
         :omniauth_providers => [:facebook, :google_oauth2, :twitter]
  has_many :user_provider, :dependent => :destroy
  has_many :tickets

  def admin?
    role == "admin"
  end
end
