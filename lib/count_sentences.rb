require 'pry'

class String

  def sentence?
    if self.include? "."
      true
    else
      false
    end
  end

  def question?
    if self.include? "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self.include? "!"
      true
    else
      false
    end
  end

  delimiters = [".", "?", "!"]
  def count_sentences
    # self.scan(/\w+/).length()
    self.split(/[.!?]/).reject { |item| item.nil? || item == '' }.length()
  end
end

x = String.new()
print "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences()