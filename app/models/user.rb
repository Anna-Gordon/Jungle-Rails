class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, confirmation: { case_sensitive: false }, uniqueness: true
  validates :password, length: { in: 6..20 }, on: :create #confirmation: true
  validates :password_confirmation, presence: true

  # def self.authenticate_with_credentials(email, password)    
  #   user = User.create(
  #     email: email,
  #     password: password,
  #                     password_confirmation: password)
  #   if user.valid? #&& user.authenticate(password)
  #     user
  #   else
  #     nil
  #   end
  # end   

  
  
  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email)
    # authenticated = user.try(:authenticate, password)
    # user = User.find_by_email(email)
  
    # user.password == password ? user : nil
    # p self
    # # user&.valid_password?(:password => password) ? user : nil
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end