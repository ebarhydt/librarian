class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    puts fb_params
    #Item.parse_message()
  end
end
