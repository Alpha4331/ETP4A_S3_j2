def caesar_cipher(str, shift)
    result = ""
    str.each_char do |char|
      if char.match(/[a-zA-Z]/)  # Vérifie si le caractère est une lettre
        shift_amount = shift % 26  # Assure que le décalage est dans la plage de l'alphabet
        ascii_offset = (char =~ /[A-Z]/) ? 65 : 97  # Offset ASCII pour les lettres majuscules ou minuscules
        shifted_char = (((char.ord - ascii_offset + shift_amount) % 26) + ascii_offset).chr
        result += shifted_char
      else
        result += char  # Les caractères qui ne sont pas des lettres restent inchangés
      end
    end
    return result
  end





  original_text = "What a string!, 5"
shift_amount = 5
puts "Texte original: #{original_text}"
puts "Texte chiffré: #{caesar_cipher(original_text, shift_amount)}"

  



