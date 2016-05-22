class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    @message = params["entry"].first["messaging"].first["message"]["text"]
    puts @message
    #AWAITING STRUCTURE OF PARAMS
    #Item.parse_message()
  end
end