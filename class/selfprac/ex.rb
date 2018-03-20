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

if s.include? "<"
   s.gsub!("<","{")
   s.gsub!(">","}")
   s.gsub!("-","..")


s.gsub!(/{(-?\w+)..(-?\w+)(..(\d+))?}/){x,y=$1,$2;a,b,c=[x,y,$4].map &:to_i
$1[/\d/]?0:(a,b=x,y)
k=a<b ?[*a..b]:[*b..a].reverse
?{+0.step(k.size-1,$4?c:1).map{|i|k[i]}*?,+?}}
r=1
t=->x{x[0].gsub(/^{(.*)}$/){$1}.scan(/(({(\g<1>|,)*}|[^,{}]|(?<=,|^)(?=,|$))+)/).map{|i|i=i[0];i[?{]?r[i]:i}.flatten}
r=->x{i=x.scan(/({(\g<1>)*}|[^{} ]+)/).map(&t)
i.shift.product(*i).map &:join}
else
end
s.split.map(&r)*' '

end

input = "{0..15}
{-10..-5}
{a..f}
{Z..P..3}
{a,b,{f..k},p}
{a,{b,c}}
b<0-4>
file<10-11>{.txt,.jpg}".split $/

input.each{|s|puts expand(s)}

