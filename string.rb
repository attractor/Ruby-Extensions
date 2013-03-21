class String

  # Get words from text
  def words
    self.downcase.scan(/[\w']+/)
  end



  # how many times word occurs in some text.
  def frequency
    counts = Hash.new(0)
    self.words.each { |word| counts[word] += 1 }
    counts
  end

  # Wrapp lines of text
  def word_wrap(width=60)
    lines = []
    line = ""
    self.split(/\s+/).each do |word|
      if line.size + word.size >= width
        lines << line
        line = word
      elsif line.empty?
        line = word
      else
        line << " " << word
      end
    end
    lines << line if line
    return lines.join "\n"
  end


end
