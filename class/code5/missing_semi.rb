#!/usr/bin/env ruby

File.readlines('dayne.js').each do |line,i|
line.chomp!
#line.chomp! (void), no need to return
#gsub! will replace the text BANG 

if line =~ /[^;}{]$/ 
 puts "Line#{i} #{line}" 

#inspect printing under the hood

end
