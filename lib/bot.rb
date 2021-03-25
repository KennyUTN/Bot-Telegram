require 'telegram/bot'
require_relative '../lib/quotes.rb'
class PhiloBot
  def initialize
    token = '1784667261:AAFt12WwsdAk7CDF8UPp57a5PA6E0cGRINg'
    @quotes = Quotes.new
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |msg|
        # rubocop:disable Layout/LineLength

        message = "My fellow friend, send :'Im Happy' for a happy quote.
      Otherwhise send 'Im Sad' so you can recieve a proper quote."
        # rubocop:enable Layout/LineLength

        message = @quotes.get_happy_quote if msg.text == 'Im Happy'

        message = @quotes.get_sad_quote if msg.text == 'Im Sad'

        bot.api.send_message(chat_id: msg.chat.id, text: message)
      end
    end
  end
end
