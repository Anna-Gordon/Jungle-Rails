class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, confirmation: { case_sensitive: false }, uniqueness: true
  validates :password, length: { in: 6..20 }, on: :create #confirmation: true
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email)
    authenticated = user.try(:authenticate, password)
    if user && authenticated
      user
    else
      nil
    end
  end

end
