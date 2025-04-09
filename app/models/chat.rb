class Chat < ApplicationRecord
  belongs_to :user
  has_many :messages, inverse_of: :chat, dependent: :delete_all

  VISIBILITIES = [ "private", "public" ].freeze
  validates :visibility, inclusion: { in: VISIBILITIES }
end
