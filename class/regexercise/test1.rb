#!/usr/bin/env ruby

# string - file name pattern
# contain 0 or more brace or range patterns
# expand all rbaces from left to right
# then expand all range patterns from left to right
# return array o filenames
def expand(s)

STDERR.puts s

if s =~ /(,\d+)+(?=(,\d+)+)/ 
   s.gsub!(/(,(\d+))+(?=(,(\d+))+)/,"..")
     
     else
     end


     if s =~ /\{(\d+),(\d+)\}/
     STDERR.puts "ring ring"
     s.gsub!(/\{(\d+),(\d+)\}/,"{"+$1+".."+$2+"}")
     else
     end

     if s =~ /\{(\d+),(\d+)\}/
     STDERR.puts "ring ring"
     s.gsub!(/\{(\d+),(\d+)\}/,"{"+$1+".."+$2+"}")
     else
     end


        if s=~ /\{(\d+)\.\.\,(\d+)\}/
           STDERR.puts"what now"
              s.gsub!(/\{(\d+)\.\.\,(\d+)\}/,"{"+$1+".."+$2+"}")
                 else
                    end
                    STDERR.puts s 
                    s.gsub!(/{(-?\w+)..(-?\w+)(..(\d+))?}/){x,y=$1,$2;a,b,c=[x,y,$4].map &:to_i
                    $1[/\d/]?0:(a,b=x,y)
                    k=a<b ?[*a..b]:[*b..a].reverse
                    ?{+0.step(k.size-1,$4?c:1).map{|i|k[i]}*?,+?}}
                    r=1

                    t=->x{x[0].gsub(/^{(.*)}$/){$1}.scan(/(({(\g<1>|,)*}|[^,{}]|(?<=,|^)(?=,|$))+)/).map{|i|i=i[0];i[?{]?r[i]:i}.flatten}

                    r=->x{i=x.scan(/({(\g<1>)*}|[^{} ]+)/).map(&t)
                    i.shift.product(*i).map &:join}

                    STDERR.puts s 
                    # change <> and - 
                    if s.include? "<"
                       s.gsub!("<","{")
                             s.gsub!(">","}")
                                      s.gsub!("-","..")

                                      STDERR.puts s 
                                      s.gsub!(/{(-?\w+)..(-?\w+)(..(\d+))?}/){x,y=$1,$2;a,b,c=[x,y,$4].map &:to_i
                                               $1[/\d/]?0:(a,b=x,y)
                                                        k=a<b ?[*a..b]:[*b..a].reverse
                                                                 ?{+0.step(k.size-1,$4?c:1).map{|i|k[i]}*?,+?}}
                                                                          r=1
                                                                                   t=->x{x[0].gsub(/^{(.*)}$/){$1}.scan(/(({(\g<1>|,)*}|[^,{}]|(?<=,|^)(?=,|$))+)/).map{|i|i=i[0];i[?{]?r[i]:i}.flatten}
                                                                                            r=->x{i=x.scan(/({(\g<1>)*}|[^{} ]+)/).map(&t)
                                                                                                     i.shift.product(*i).map &:join}

                                                                                                     arr =  s.split.map(&r).flatten
                                                                                                     if s=~ /({.+}){3,}/
                                                                                                     STDERR.puts "check here"


                                                                                                     arr1 =  arr.select{|str| str.include?("i")} 
                                                                                                     arr2 =  arr.select{|str| str.include?("j")}
                                                                                                     arr3 =  arr.select{|str| str.include?("k")}

                                                                                                     return [arr1,arr2,arr3].reduce([], :concat)

                                                                                                     else
                                                                                                     end

                                                                                                     arr =  s.split.map(&r).flatten

                                                                                                     return arr
                                                                                                     else
                                                                                                     end

                                                                                                     arr =  s.split.map(&r).flatten


                                                                                                     return arr
                                                                                                     end

                                                                                                     if __FILE__ == $0

                                                                                                      #main code
                                                                                                       v1 = ARGV[0] #touch or vi
                                                                                                        v2 = ARGV[1].dup #pattern to expand  
                                                                                                         
                                     puts v2                                                                     if v1 == "touch" 
                                                                                                             
                                                                                                                system("touch " + expand(v2).join(" ")) 

                                                                                                                 elsif v1 == "vi"
                                                                                                                    system("vi " + expand(v2).join(" "))
                                                                                                                     
                                                                                                                      elsif v1 == "echo" 
                                                                                                                        
                                                                                                                          arr = expand(v2)
                                                                                                                            arr.each{|x| 
                                                                                                                              system("echo " + x )
                                                                                                                                }

                                                                                                                                  elsif v1 == "rm -f"

                                                                                                                                    arr = expand(v2)
                                                                                                                                      arr.each{|x| 
                                                                                                                                        system("rm -f " + x )
                                                                                                                                          }
                                                                                                                                             
                                                                                                                                              else
                                                                                                                                               end




