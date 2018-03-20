require 'readline'

comp = proc { |s| Readline::HISTORY.grep(/^#{Regexp.escape(s)}/) }
 
Readline.completion_append_character = " "
Readline.completion_proc = comp



comp = proc do |s|
  directory_list = Dir.glob("#{s}*")
 
  if directory_list.size > 0
    directory_list
  else
    Readline::HISTORY.grep(/^#{Regexp.escape(s)}/)
  end
end



 
while input = Readline.readline("> ", true)
  break                       if input == "exit"
  puts Readline::HISTORY.to_a if input == "hist"
 
  # Remove blank lines from history
  Readline::HISTORY.pop if input == ""
 
  system(input)
end
