# Add your code here
def help 
  puts"I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song,index|  puts "#{index+1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:" 
  user_input = gets.strip
  song = user_input.to_i
  user_song = song -1

  if(1..9).to_a.index(song)!= nil
      puts "Playing #{songs[user_song]}"
    else if songs.index(user_input) != nil
      puts "Playing #{user_input}"
      else 
        puts "Invalid input, please try again ." 
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
puts "Please enter a command:"
help
user_input = gets.strip
  while user_input != "exit"
    if user_input =="play"
      play(songs)
      user_input = gets.strip
      else if user_input == "list"
      list(songs)
      user_input = gets.strip
      else if user_input == "help"
      help
      user_input = gets.strip
      end
      end
    end
    end
exit_jukebox
end










