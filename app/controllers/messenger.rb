class MessengerController < Messenger::MessengerController
  def webhook
    #logic here
    render nothing: true, status: 200
    Item.create(owner: 1)
  end
end