class MessengerController < Messenger::MessengerController
  def webhook
    render nothing: true, status: 200
    Item.create(owner: 1)
  end
  def test_message
    Messenger::Client.send(
	Messenger::Request.new(
		Messenger::Elements::Text.new(text: 'some text'),
      		fb_params.first_entry.sender_id
			    )
			)
      render nothing: true status: 200
      end
end