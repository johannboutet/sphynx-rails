class User < ApplicationRecord
  def self.find_for_jwt_authentication(id)
    find(id)
  end

  def jwt_subject
    id
  end
end
