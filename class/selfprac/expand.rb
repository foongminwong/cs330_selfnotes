
k=a<b ?[*a..b]:[*b..a].reverse
?{+0.step(k.size-1,$4?c:1).map{|i|k[i]}*?,+?}}
r=1
t=->x{x[0].gsub(/^{(.*)}$/){$1}.scan(/(({(\g<1>|,)*}|[^,{}]|(?<=,|^)(?=,|$))+)/).map{|i|i=i[0];i[?{]?r[i]:i}.flatten}
r=->x{i=x.scan(/({(\g<1>)*}|[^{} ]+)/).map(&t)
i.shift.product(*i).map &:join}
s.split.map(&r)*' '}


input = "
{a,b,{f..k},p}
{a,{b,c}}
c{a,o,ha,}t
{ab,fg}{1..3}
file<10-11>{.txt,.jpg}".split $/

input.each{|s|puts f[s]}



# https://repl.it/repls/TangibleChubbyMagpie
