require 'telegram/bot'
require_relative '../lib/quotes.rb'

class PhiloBot
  def initialize
    token = 'YOUR_TOKEN_KEY'
    @quotes = Quotes.new
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |msg|
        message = "My fellow friend, send :'Im Happy' for a happy quote.
      Otherwhise send 'Im Sad' so you can recieve a proper quote."

        message = @quotes.a_happy_quote if msg.text == 'Im Happy'

        message = @quotes.a_sad_quote if msg.text == 'Im Sad'

        bot.api.send_message(chat_id: msg.chat.id, text: message)
      end
    end
  end
end
