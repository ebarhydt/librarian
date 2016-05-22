class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    @message = params["entry"].first["messaging"].first["message"]["text"]
    puts @message
    #AWAITING STRUCTURE OF PARAMS
    puts "facebook params are " + fb_params.to_s
  end
end
