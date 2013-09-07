class Message < ActiveRecord::Base
  has_many :users

  def self.find_next(message)
    new_message = Message.where('id > ?', message.id).first
    new_message = Message.first unless new_message
    return new_message
  end
end
