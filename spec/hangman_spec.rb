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
    expect(@hangman.word.length >= 5 && @hangman.word.length <= 12).to eq(true)
  end

  it 'should be able to test for lose' do
    expect(@hangman.has_more_attempt?).to eq(true)
    guess_all_letters
    expect(@hangman.has_more_attempt?).to eq(false)
  end

  it 'should be able to test for win' do
    expect(@hangman.not_win?).to eq(true)
    guess_all_letters
    expect(@hangman.not_win?).to eq(false)
  end
end
