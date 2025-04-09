# == Schema Information
#
# Table name: users
#
#  id              :uuid             not null, primary key
#  email_address   :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email_address  (email_address) UNIQUE
#

class User < ApplicationRecord
  rolify
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :suggestions, inverse_of: :user, dependent: :destroy
  has_many :chats, inverse_of: :user, dependent: :destroy
  has_many :documents, inverse_of: :user, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
