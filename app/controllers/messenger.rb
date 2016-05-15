class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    puts params
    #Item.parse_message()
  end
end
