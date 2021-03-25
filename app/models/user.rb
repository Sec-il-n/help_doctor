class User < ApplicationRecord
  # has_secure_password
  with_options presence: true do
    validates :name
    validates :email
    validates :password
    validates :password_confirmation
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable#,
         # :omniauthable, omniauth_providers: [:twitter]
end
