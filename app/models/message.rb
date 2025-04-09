# == Schema Information
#
# Table name: messages
#
#  id         :uuid             not null, primary key
#  chat_id    :uuid             not null
#  role       :string           not null
#  parts      :json             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_messages_on_chat_id  (chat_id)
#

class Message < ApplicationRecord
  belongs_to :chat
end
