class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    #AWAITING STRUCTURE OF PARAMS
    #Item.parse_message()
    puts "params are " + params
  end
end