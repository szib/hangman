require_relative '../lib/hangman.rb'

h = Hangman.new

print 'Load saved game? [y/n]'
if gets.chomp.casecmp('Y').zero?
  case h.load
  when 0
    puts 'Loading...'
  when 1
    puts 'Cannot load saved game. Starting a new one instead.'
  end
end

h.display
while h.has_more_attempt? && h.not_win?
  print 'Give me a letter or type save for saving game. ==> '
  l = gets.chomp
  if l.upcase == 'SAVE'
    puts 'Saving game...'
    h.save
  else
    h.guess(l)
  end
  h.display
  puts "Remaining attempts: #{h.remaining_attempts}\n\n"
end

if h.not_win?
  puts "You lost. :) The word was #{h.word.join('')}."
else
  puts "You won. :( #{h.word.join('')} was an easy word, isn't it?"
end
