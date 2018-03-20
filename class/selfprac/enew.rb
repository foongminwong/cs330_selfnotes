f=->s{s.gsub!(/{(-?\w+)..(-?\w+)(..(\d+))?}/){x,y=$1,$2;a,b,c=[x,y,$4].map &:to_i
$1[/\d/]?0:(a,b=x,y)
k=a<b ?[*a..b]:[*b..a].reverse
?{+0.step(k.size-1,$4?c:1).map{|i|k[i]}*?,+?}}
r=1
t=->x{x[0].gsub(/^{(.*)}$/){$1}.scan(/(({(\g<1>|,)*}|[^,{}]|(?<=,|^)(?=,|$))+)/).map{|i|i=i[0];i[?{]?r[i]:i}.flatten}
r=->x{i=x.scan(/({(\g<1>)*}|[^{} ]+)/).map(&t)
i.shift.product(*i).map &:join}
s.split.map(&r)*' '}

input = "{0..15}
{-10..-5}
{a..f}
{Z..P..3}
{a,b,{f..k},p}
{a,{b,c}}
b{0..4}
file<10-11>{.txt,.jpg}
file{10..11}.txt file{10..11}.jpg".split $/

input.each{|s|puts f[s]}
