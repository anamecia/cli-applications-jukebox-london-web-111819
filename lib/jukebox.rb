# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|item, index| puts "#{index+1}. #{item}"}
end

def play (songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  i = 0
  while i < songs.length do 
    if songs[i].include? user_input or songs[i] == user_input
      puts "Playing #{songs[i]}"
    else
     
    end
    i += 1
  end
   puts "Invalid input, please try again"
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  user_command = gets.strip
  unless user_command == "exit" 
    if user_command == "list"
      list(songs)
    elsif user_command == "play"
      play(songs)
    elsif user_command == "help"
      help
    end
  end
    exit_jukebox
end 
