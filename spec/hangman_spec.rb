require './lib/hangman.rb'

describe 'Hangman' do
  def guess_all_letters
    ('a'..'z').each do |x|
      @hangman.guess(x)
    end
  end

  before(:example) do
    @hangman = Hangman.new
  end

  it 'should have a random word with correct length' do
    expect(@hangman.display.length >= 5 && @hangman.display.length <= 12).to eq(true)
  end

  it 'should be able to test for lose' do
    expect(@hangman.has_no_more_attempt?).to eq(false)
    guess_all_letters
    expect(@hangman.has_no_more_attempt?).to eq(true)
  end

  it 'should be able to test for win' do
    expect(@hangman.win?).to eq(false)
    guess_all_letters
    expect(@hangman.win?).to eq(true)
  end
end
