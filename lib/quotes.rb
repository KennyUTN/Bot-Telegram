class Quotes
  attr_accessor :happy_quote, :sad_quote

  def initialize
    # rubocop:disable Layout/LineLength

    @happy_quote = ['Be yourself; everyone else is already taken',
                   'To live is the rarest thing in the world. Most people exist, that is all.',
                   'Live as if you were to die tomorrow. Learn as if you were to live forever.',
                   'Great minds discuss ideas; average minds discuss events; small minds discuss people.',
                   'Do one thing every day that scares you']

    @sad_quote = ['Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate; only love can do that.',
                'Our lives begin to end the day we become silent about things that matter.',
                'In the end, we will remember not the words of our enemies, but the silence of our friends.',
                "I have not failed. I've just found 10,000 ways that won't work.",
                'Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.']
    # rubocop:enable Layout/LineLength
  end

  def get_happy_quote
    return @happy_quote.sample
  end

  def get_sad_quote
    return @sad_quote.sample
  end
end
