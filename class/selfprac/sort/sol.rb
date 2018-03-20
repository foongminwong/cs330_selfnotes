alpha = "abcdefghijklmnopqrstuvwxyz"
array = ["10i71", "10i72", "10j71", "10j72", "11i71"]

array.sort_by! do |word|
  word.split('').map do |letter|
      alpha.index(letter)
        end
        end

      p array
