class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    if params.key?("entry") && params["entry"].any?
      entry = params["entry"].first
      puts "entry"
      if entry.key?("messaging") && entry["messaging"].any?
        messaging = entry["messaging"].first
        puts "messaging"
        if messaging.key?("message") && messaging["message"].any?
          message = messaging["message"]
          puts "message"
          if message.key?("text")
            @message = message["text"]
          end
        end
      end
    end
    if params.key?("entry") && params["entry"].any?
      entry = params["entry"].first
      puts "entry"
      if entry.key?("messaging") && entry["messaging"].any?
        messaging = entry["messaging"].first
        puts "messaging"
        if messaging.key?("sender") && messaging["sender"].any?
          sender = messaging["sender"]
          puts "sender"
          if sender.key?("id")
            @sender = sender["id"]
          end
        end
      end
    end
    puts @message
    puts @owner
    Item.parse_message(@message, @owner)
  end
end
