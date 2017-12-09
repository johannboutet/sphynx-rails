class User < ApplicationRecord
  has_many :auth_providers, inverse_of: :user, dependent: :destroy

  def self.find_for_jwt_authentication(id)
    find(id)
  end

  def jwt_subject
    id
  end
end
