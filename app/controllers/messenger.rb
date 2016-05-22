class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    if fb_params.first_entry.callback.message?
      @message = fb_params.first_entry.callback.message
      puts @message
      @owner = fb_params.first_entry.sender_id
      puts @owner
      Item.parse_message(@message, @owner)
    else
      puts "no message"
    end
  end
end
