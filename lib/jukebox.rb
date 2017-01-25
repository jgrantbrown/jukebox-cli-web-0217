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

=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each.with_index{|song,index| puts "#{index + 1}.#{song}"}
end

def play(songs)
puts "Please enter a song name or number?"
    playsong=gets.chomp
     if songs.include?(playsong)
       puts "Playing #{playsong}"
     elsif playsong.to_i < songs.size
       puts "Playing #{songs[playsong.to_i+1]}"
     else #playsong.to_i >songs.size
       puts "Invalid input,please try again"
    end
end

def exit_jukebox
puts "Goodbye"
end

def run(songs)
puts "Please enter a command:"
answer=gets.chomp
case answer
when "help"
  help
  run(songs)
when "list"
  list(songs)
  run(songs)
when "play"
    play(songs)
    run(songs)
when "exit"
  exit_jukebox
  end
end
