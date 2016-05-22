class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    @message = params["entry"].first["messaging"].first["message"]["text"]
    puts @message
    @owner = params["entry"].first["messaging"].first["sender"]["id"]
    puts @owner
    # Item.parse_message(@message, @owner)
  end
end
