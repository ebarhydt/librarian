class Item < ActiveRecord::Base

  def self.parse_message(msg, owner)
    if msg.include?(" is ")
      item = msg.split(" is ")
      Item.create(key: item[0], value: item[1], owner: owner)
      puts Item.all
      Messenger::Client.send(
        Messenger::Request.new(
          Messenger::Elements::Text.new(text: "saved!"),
          owner
        )
      )
    else
      item = Item.find_by(key: msg)
      Messenger::Client.send(
        Messenger::Request.new(
          Messenger::Elements::Text.new(text: item.value),
          owner
        )
      )
    end
  end
end