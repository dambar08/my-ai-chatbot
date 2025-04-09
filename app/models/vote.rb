# == Schema Information
#
# Table name: votes
#
#  chat_id    :uuid             not null
#  message_id :uuid             not null
#  upvoted    :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_votes_on_chat_id                 (chat_id)
#  index_votes_on_chat_id_and_message_id  (chat_id,message_id) UNIQUE
#  index_votes_on_message_id              (message_id)
#

class Vote < ApplicationRecord
  validates :chat_id, :message_id, :upvoted, presense: true
  belongs_to :chat
  belongs_to :message

  def upvote!
    update!(upvoted: true)
  end

  def downvote
    update!(upvoted: false)
  end
end
