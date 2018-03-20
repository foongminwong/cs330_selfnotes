def expand (s)

arr = ['']

s.gsub!(/{(-?\w+)..(-?\w+)(..(\d+))?}/){x,y=$1,$2;a,b,c=[x,y,$4].map &:to_i
$1[/\d/]?0:(a,b=x,y)
k=a<b ?[*a..b]:[*b..a].reverse
?{+0.step(k.size-1,$4?c:1).map{|i|k[i]}*?,+?}}
r=1
t=->x{x[0].gsub(/^{(.*)}$/){$1}.scan(/(({(\g<1>|,)*}|[^,{}]|(?<=,|^)(?=,|$))+)/).map{|i|i=i[0];i[?{]?r[i]:i}.flatten}
r=->x{i=x.scan(/({(\g<1>)*}|[^{} ]+)/).map(&t)
i.shift.product(*i).map &:join}

s.split.map(&r)*' '


end

         input = "
        {10..12}{i..k}{7..8}{1..2}".split $/



      #   input.each{|s|puts  expand(s) }
   input2 = "{10..12}{i..k}{7..8}{1..2}"
         arr =  expand(input2).split(" ")


arr1 =  arr.select{|str| str.include?("i")}

arr2 =  arr.select{|str| str.include?("j")}


arr3 =  arr.select{|str| str.include?("k")}

ending = arr1 + arr2 + arr3
p ending
