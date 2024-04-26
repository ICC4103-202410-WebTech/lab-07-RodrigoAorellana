class User < ApplicationRecord
  has_many :posts

  validates :name, presence: { message: "You must enter a name." }
  validates :email, presence: { message: "You must enter an email." },
  uniqueness: { message: "This email already exists." },
  format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please put the email format" }
  validates :password, presence: { message: "You enter one password." },
  length: { minimum: 6, message: "The password must have a minimum of 6 characters." }

end
