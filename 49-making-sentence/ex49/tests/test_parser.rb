require "ex49/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase

  def test_build_sentence_when_give_verb_and_direction_words
    sentence = Parser.parse_sentence([["verb", "run"], ["direction", "north"]])

    expected = Sentence.new("run", "north")
    assert_equal(true, expected.match?(sentence))
  end

  def test_build_sentence_when_give_verb_and_noun_words
    sentence = Parser.parse_sentence([["verb", "kill"], ["noun", "bear"]])

    expected = Sentence.new("kill", "bear")
    assert_equal(true, expected.match?(sentence))
  end

end
