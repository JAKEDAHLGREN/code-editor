class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
  SEED = [
    { email_address: "jake.dahlgrendev@gmail.com", password: "password" },
    { email_address: "jordan@railsdesigner.com", password: "password" },
    { email_address: "casey@railsdesigner.com", password: "password" },
    { email_address: "morgan@railsdesigner.com", password: "password" },
    { email_address: "taylor@railsdesigner.com", password: "password" }
  ]
end
