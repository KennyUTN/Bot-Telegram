require_relative '../lib/quotes.rb'
describe Quotes do
  let(:test) { Quotes.new }

  describe '#get_happy_quote' do
    context 'Gets a random string'
    subject { test.a_happy_quote }
    it { is_expected.to be_kind_of(String) }
  end

  describe '#get_sad_quote' do
    context 'Gets a random sad string'
    subject { test.a_sad_quote }
    it { is_expected.to be_kind_of(String) }
  end
end
