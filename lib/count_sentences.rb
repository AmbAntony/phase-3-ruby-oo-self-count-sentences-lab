require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  # What we'd like to be able to do is call a `count_sentences` method on a string,
  #   and get back a, well, count of sentences in that string


  def count_sentences
    self.split(/\.|\?|!/).map(&:strip).reject(&:empty?).count
  end
end

text = "This is a string! It has three sentences. Right?"
puts text.count_sentences