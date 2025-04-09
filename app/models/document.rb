class Document < ApplicationRecord
  belongs_to :user
  has_many :suggestions, dependent: :delete_all

  validates :kind, inclusion: { in: [ "text", "code", "image", "sheet" ] }
  validates :title, presence: true
end
