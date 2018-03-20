a = ["10i71","10i72","10j71","10j72","11i71","11i72","11j71","11j72"]

order =['a'..'z'] 
ORDER = %w[abcdefghijklmnopqrstu]
#a.sort_by!(|c| order.index(c)}
#a.sort_by!(&:downcase)
#a.sort_by!{|s| s.tr(a.to_s,order)}
#a.group_by{|c| c.last }.values_at(*ORDER)

#a.sort_by!{|m| m.downcase}
#a.sort_by!{|arr| order.index(a)}
ALPHABET = "abcdefghijklmnopqrstuvwxyz"


a.sort_by! do |word|
  word.split('').map do |letter|
        ALPHABET.index(letter)
                end
                        end
p a

