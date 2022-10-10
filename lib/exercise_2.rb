def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)

    p key.chars.uniq
    p ('a'..'z').to_a
    p('a'..'z').to_a - key.chars

    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end

    p "cipher.find_index(char)"
    p cipher.find_index(char)
    p char
    p cipher

    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    p cipher
    plaintext_chars = ciphertext.chars.map do |char|
      
      p char
      p char.ord

      output_character = cipher[(65 - char.ord).abs]
      output_character = cipher[(char.ord - 65)]
      p "Should be 't'."
      p "But it is #{output_character}."

    end
    return plaintext_chars.join
  end

  p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  p "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

  p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  p "theswiftfoxjumpedoverthelazydog"