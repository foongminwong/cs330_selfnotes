#!/usr/bin/env ruby

=begin

$\
$&
$'
=end

sentence = %q{the quick brown fox jumped over the lazy dog}

#sentence.scan (/(\w+)/) do |match|
#puts match.inspect
#puts match
#end

sentence.scan (/the/) do |match|
#puts match[0].inspect
puts "$`: #{$`}"
puts "$&: #{$&}"
puts "$' : #{$'}"
end
