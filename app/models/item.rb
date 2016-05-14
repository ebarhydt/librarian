class Item < ActiveRecord::Base

  def self.parse_message(msg = nil, owner = nil)
    if msg.include?(" is ")
      item = msg.split(" is ")
      Item.create(key: item[0], value: item[1], owner: owner)
    else
      # assume it's a key and retrieve the value
    end
  end
end

