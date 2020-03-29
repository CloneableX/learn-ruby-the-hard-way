require "lexicon.rb"
require "test/unit"

class TestLexicon < Test::Unit::TestCase

  def test_get_words_size()
    result = Lexicon.scan("This is a sentence")

    assert_equal(result.size, 4)
  end

  def test_analyze_direction_word()
    result = Lexicon.scan("north")

    assert_equal(result, [["direction", "north"]])
  end

  def test_analyze_multiple_direciton_words()
    result = Lexicon.scan("east down left ")

    assert_equal(result, [["direction", "east"], ["direction", "down"], ["direction", "left"]])
  end

  def test_analyze_verbs()
    result = Lexicon.scan("go stop kill eat")

    assert_equal(result, [["verb", "go"], ["verb", "stop"], ["verb", "kill"], ["verb", "eat"]])
  end

  def test_analyze_nouns()
    result = Lexicon.scan("door bear princess cabinet")

    assert_equal(result, [["noun", "door"], ["noun", "bear"], ["noun", "princess"], ["noun", "cabinet"]])
  end

  def test_analyze_stop_words()
    result = Lexicon.scan("the in of")

    assert_equal(result, [["stop", "the"], ["stop", "in"], ["stop", "of"]])
  end

  def test_analyze_numbers()
    result = Lexicon.scan("3 199 010")

    assert_equal(result, [["number", 3], ["number", 199], ["number", 010]])
  end

  def test_convert_non_number_string_to_nubmer()
    result = Lexicon.convert_number("hel")

    assert_equal(result, nil)
  end

  def test_analyze_words_with_multiple_spaces()
    result = Lexicon.scan("north  eat")

    assert_equal(result, [["direction", "north"], ["verb", "eat"]])
  end

  def test_analyze_upper_words()
    result = Lexicon.scan("NORth DOWN")

    assert_equal(result, [["direction", "north"], ["direction", "down"]])
  end

end
