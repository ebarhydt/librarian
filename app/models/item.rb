class Item < ActiveRecord::Base

  def self.parse_message(msg, owner)
    if msg.include?(" is ")
      item = msg.split(" is ")
      Item.create(key: item[0], value: item[1], owner: owner)
    else
#      fetch_item(msg, owner)
    end
  end

end

#input = Item.parse_message(params[:message])
#    key = input[0]
#    value = input[1]
#    @item = Item.new(key: key, input: input, owner: params[:_id])
#    @item.save