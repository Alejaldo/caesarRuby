print "Your text: "
text = gets.chomp.to_s
print "Your shift value: "
shift = gets.chomp.to_i

ALPHABET = [*?A..?Z], [*?a..?z]

def caesar_cipher text, shift
  text.tr ALPHABET.join, ALPHABET.map{ |text_arr| text_arr.rotate shift }.join
end

puts caesar_cipher text, shift