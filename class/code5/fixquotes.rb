tag = '<img src=foo.png width=700 alt="Foobag">'

#don't actually match it, just pick ahead
tag.gsub!(/(?<==)([^"].*?)(?=\s|>)/, '="\1"')

puts tag
