class User < ActiveRecord::Base
  belongs_to :message

  has_secure_password

  before_save { self.email.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    length: { maximum: 50 },
    format: { with: VALID_EMAIL_REGEX }

  validates :name,
    presence: true,
    uniqueness: { case_sensitive: false },
    length: { maximum: 50 }

  validates :password,
    presence: true, on: :create

end
