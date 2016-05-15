class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    puts fb_params.entries.each do |entry|
      puts entry
    #Item.parse_message()
  end
end
