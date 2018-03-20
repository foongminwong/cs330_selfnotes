# gsub does 

def jjeach list
  i=0
  while i<list.size
    yield list[i] #a fucntion #yield: a block
  i+=1
end

end

list = ['andy','crutches','why']
jjeach(list) do |item| #pass a block
  puts item 
end


s = 'foo4-65capitalism'

s.gsub(/(\d+)-(\d+)/) do |first,second|
 puts "first: #{first}"
 puts "second: #{second}"
end
