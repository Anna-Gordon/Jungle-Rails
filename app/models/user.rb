class User < ActiveRecord::Base
  has_secure_password
  # has_secure_password :recovery_password, validations: false ?
end
