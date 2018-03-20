def expand(s)
  result = ['']; 
    r = /([{,])([^{},]*){([^{}]+)}([^{},]*)([,}])/
      s.sub!(r) { $1 << $3.split(',').map {|i| $2<<i<<$4 }.join(",") << $5 } while s.match r #or 'while $3', I think
        s.scan(/([^{}]*){([^{}]+)}([^{}]+$)?/) {|a,b,e| 
            result = result.product(b.split(',').map {|c|  a.to_s + c + e.to_s}).collect {|x,y| x + y}
              }
                result
                end

puts "{10,11,12}{i,j,k}{7,8}{1,2}"
