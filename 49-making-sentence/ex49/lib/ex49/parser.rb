module Parser

  def Parser.parse_sentence(words)
    verb = ""
    object = ""
    words.each do |word|
      if word[0] == "verb"
        verb = word[1]
      elsif word[0] == "direction"
        object = word[1]
      elsif word[0] == "noun"
        object = word[1]
      end
    end

    return Sentence.new(verb, object)
  end

end

class Sentence

  def initialize(verb, object)
    @subject = "player"
    @verb = verb
    @object = object
  end

  attr_reader :subject
  attr_reader :verb
  attr_reader :object

  def match?(sentence)
    return @verb == sentence.verb && @object == sentence.object && @subject == sentence.subject
  end

end
