
def help
  puts "I accept the following commands:"
  puts /- help : displays this help message/
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(song_array)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input == list(song_array).include?(input)
    puts "Playing <#{input}>"
  else
    puts "Invalid input, please try again"
  end
end
