class Message < ActiveRecord::Base

  def self.find_next(message)
    new_message = Message.where('id > ?', message.id).first
    new_message = Message.first unless new_message
  end
end
