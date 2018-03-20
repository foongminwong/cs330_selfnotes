#/usr/bin/env ruby

# string - file name pattern
# contain 0 or more brace or range patterns
# expand all rbaces from left to right
# then expand all range patterns from left to right
# return array o filenames
def expand(s)

# change <> diamond bracket and -
if s =~ /<(\d+)-(\d+)>/
s.gsub!("<","{")
s.gsub!(">","}")
s.gsub!("-","..")
else
end

# change ?,?,? (numbers) to ?..?
if s =~ /(,\d+)+(?=(,\d+))/ 
   s.gsub!(/(,\d+)+(?=(,\d+))/,"..")
      
         if s =~ /,(\d+)/
            s.gsub!(/,/,"")

               else
                  end
                  else
                  end

                  STDERR.puts s + "second"

                  # change 16,17 to 16..17
                  if s =~ /\{(\d+),(\d+)\}/
                  s.gsub!(/\{(\d+),(\d+)\}/,"{"+$1+".."+$2+"}")
                  else
                  end

                  STDERR.puts s + "third"
                  STDERR.puts "START EXPANSION"
                  # start doing the expansion
                  s.gsub!(/{(-?\w+)..(-?\w+)(..(\d+))?}/){x,y=$1,$2;a,b,c=[x,y,$4].map &:to_i
                           $1[/\d/]?0:(a,b=x,y)
                                    k=a<b ?[*a..b]:[*b..a].reverse
                                             ?{+0.step(k.size-1,$4?c:1).map{|i|k[i]}*?,+?}}
                                                      r=1
                                                               t=->x{x[0].gsub(/^{(.*)}$/){$1}.scan(/(({(\g<1>|,)*}|[^,{}]|(?<=,|^)(?=,|$))+)/).map{|i|i=i[0];i[?{]?r[i]:i}.flatten}
                                                                        r=->x{i=x.scan(/({(\g<1>)*}|[^{} ]+)/).map(&t)
                                                                                 i.shift.product(*i).map &:join}

                                                                                 STDERR.puts "split array"
                                                                                 arr =  s.split.map(&r).flatten
                                                                                 STDERR.puts "print array"
                                                                                 STDERR.puts arr


                                                                                 STDERR.puts "check the last case"
                                                                                 # deal with the last case

                                                                                 if s=~ /({.+}){3,}/
                                                                                 #arr1 =  arr.select{|str| str.include?("i")} 
                                                                                 #arr2 =  arr.select{|str| str.include?("j")}
                                                                                 #arr3 =  arr.select{|str| str.include?("k")}
                                                                                 STDERR.puts "inside"
                                                                                 #ending =  [arr1,arr2,arr3].reduce([], :concat)

                                                                                 ALPHABET = "abcdefghijklmnopqrstuvwxyz"

                                                                                 arr.sort_by! do |word|
                                                                                   word.split('').map do |letter|
                                                                                      ALPHABET.index(letter)
                                                                                      end
                                                                                      end

                                                                                      STDERR.puts "after sorting"
                                                                                      STDERR.puts arr
                                                                                      else
                                                                                      end

                                                                                      STDERR.puts "final array"
                                                                                      #STDERR.puts ending
                                                                                      return arr



                                                                                      end

                                                                                      if __FILE__ == $0

                                                                                       #main code
                                                                                        v1 = ARGV[0] #touch or vi
                                                                                         v2 = ARGV[1].dup #pattern to expand  
                                                                                          
                                                                                           if v1 == "touch" 
                                                                                              
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


                                                                                                                                end

