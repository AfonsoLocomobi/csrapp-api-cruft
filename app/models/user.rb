class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :password, confirmation: true, length: { in: 6..20 }
    validates :password_confirmation, presence: true
    validates :name, presence: true
end
