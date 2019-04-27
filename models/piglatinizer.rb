




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