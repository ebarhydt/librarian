class MessengerController < Messenger::MessengerController
  def webhook
    puts 'test'
    render nothing: true, status: 200
  end
end