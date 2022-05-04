@dictionary = {
  " "=> " ",
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_letter(letter)
  return @dictionary[letter]
end

def decode_word(word)
    @new_word=' '
    letters=word.split
    letters.each do |letter|
        @new_word += decode_letter(letter)
     end
  return @new_word
end

def decode_morse(message)
   @decoded_message=''
    words=message.split("   ")
     words.each do |word|
        @decoded_message+=decode_word(word)
     end
    return @decoded_message
end

puts decode_morse(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')