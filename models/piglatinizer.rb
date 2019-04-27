class PigLatinizer

  def piglatinize(string)
    if string.split(" ").length == 1
      piglatinize_word(string)
    else
      piglatinize_phrase(string)
    end
  end

  def consonant(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if !consonant(word[0])
      word = word + "w"
    elsif consonant(word[0]) && consonant(word[1]) && consonant(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant(word[0]) && consonant(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_phrase(phrase)
    phrase.split.collect{|word| piglatinize_word(word)}.join(" ")
  end
  
end




=begin
class PigLatinizer
  
  def piglatinize(phrase)
    piglatin = []
    phrase_arr = phrase.split
    
    phrase_arr.each do |text|
      if text.start_with?(/([aAeEiIoOuU].*)/)
        piglatin << "#{text}way"
      else
        string = text.split(/([aAeEiIoOuU].*)/)
        piglatin << "#{string[1]}#{string[0]}ay"
      end
    end
    piglatin.join(" ")
  end
  
end
=end