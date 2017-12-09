class AuthProvider < ApplicationRecord
  belongs_to :user, inverse_of: :auth_providers

  validates :provider, :uid, presence: true
  validates :provider, uniqueness: { scope: :user_id }
  validates :uid, uniqueness: { scope: :provider }
end
