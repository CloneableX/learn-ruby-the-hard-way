module Ex25

  def Ex25.split_words(sentence)
    words = sentence.split(" ")
    return words
  end

  def Ex25.sort_words(words)
    return words.sort
  end

  def Ex25.print_first_word(words)
    puts words.shift
  end

  def Ex25.print_last_word(words)
    puts words.pop
  end

  def Ex25.sort_sentence(sentence)
    words = Ex25.split_words(sentence)
    sorted_words = Ex25.sort_words(words)
    return sorted_words
  end

  def Ex25.print_first_and_last(sentence)
    words = Ex25.split_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  def Ex25.print_first_and_last_sorted(sentence)
    sorted_words = sort_sentence(sentence)
    Ex25.print_first_word(sorted_words)
    Ex25.print_last_word(sorted_words)
  end

end
