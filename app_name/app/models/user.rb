class User < ApplicationRecord
  validates :username, presence: true
  validates :password_digest, presence: true


  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
end
