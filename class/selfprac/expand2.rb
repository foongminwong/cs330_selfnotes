def expand(s)
result = ['']; 
r = /([{,])([^{},]*){([^{}]+)}([^{},]*)([,}])/
s.sub!(r) { $1 << $3.split(',').map {|i| $2<<i<<$4 }.join(",") << $5 } while s.match r #or 'while $3'
s.scan(/([^{}]*){([^{}]+)}([^{}]+$)?/) {|a,b,e| 
            result = result.product(b.split(',').map {|c|  a.to_s + c + e.to_s}).collect {|x,y| x + y}
              }
      result
end

puts expand("file{A..C}")


=begin
puts expand("file{A,B,C}")
puts expand("b<0-4>")
=end

#Source: https://gist.github.com/ewoodh2o/3829405
