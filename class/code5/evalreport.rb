#!/usr/bin/env ruby

src = File.read('report')

src.gsub!(/\{\{\{(.*)}\}\}\}/, $1) do 

  eval($1)
  # puts $1

end

puts src
