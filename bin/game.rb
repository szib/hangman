require_relative '../lib/hangman.rb'

h = Hangman.new

while h.has_more_attempt? && h.not_win?
  print 'Give me a letter. ==> '
  l = gets.chomp
  h.guess(l)
  h.display
  puts "Remaining attempts: #{h.remaining_attempts}\n\n"
end

if h.not_win?
  puts "You lost. :) The word was #{h.word.join('')}."
else
  puts "You won. :( #{h.word.join('')} was an easy word, isn't it?"
end
