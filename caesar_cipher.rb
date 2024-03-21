def caesar(message, shift)
  encrypted_text = ""
  message.each_char do |char|
    unicode = char.ord
    if unicode.between?(65, 90) # Uppercase letters
      encrypted_text += ((unicode - 65 + shift) % 26 + 65).chr
    elsif unicode.between?(97, 122) # Lowercase letters
      encrypted_text += ((unicode - 97 + shift) % 26 + 97).chr
    else
      encrypted_text += char
    end
  end
  return encrypted_text
end
