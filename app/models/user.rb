class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable,
         :omniauth_providers => [:facebook, :google_oauth2, :twitter]
  has_many :user_provider, :dependent => :destroy
end
