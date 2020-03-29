module Lexicon
  DIRECTION = ["north", "south", "east", "west", "down", "up", "left", "right", "back"]
  VERB = ["go", "stop", "kill", "eat"]
  NOUN = ["door", "bear", "princess", "cabinet"]
  STOP = ["the", "in", "of", "from", "at", "it"]
  
  def Lexicon.scan(sentence)
    result = []
    words = sentence.downcase.split

    words.each do |word|
      word_type = analyze_word(word)

      if word_type == "number" && convert_number(word) != nil
        word = convert_number(word)
      end
      result << [word_type, word]
    end
    return result
  end

  def Lexicon.convert_number(word)
    begin
      return Integer(word)
    rescue
      return nil
    end
  end

  def Lexicon.analyze_word(word)
    if DIRECTION.include?(word)
      return "direction"
    elsif VERB.include?(word)
      return "verb"
    elsif NOUN.include?(word)
      return "noun"
    elsif STOP.include?(word)
      return "stop"
    elsif word =~ /\d\d*/
      return "number"
    else
      return "error"
    end
  end

end
