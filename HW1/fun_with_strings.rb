module FunWithStrings
  def palindrome?
    t = self.downcase.gsub(/[^a-z]/i,'')
    return true if t == t.reverse
    return false
  end
  def count_words
    words = self.downcase
        .gsub(/[^a-z\s]/, '')
        .gsub(/\s+/, ' ')
        .gsub(/^\s/, '')
        .split(/\s/)
    frequencies = Hash.new(0)
    words.each do |word|
        frequencies[word] += 1
    end
    return frequencies
  end
  def anagram_groups
    anagrams = Array.new(0)
    t = Hash.new(0)
    
    words = self.split(' ')
    words.each do |word|
        o = word.downcase.chars.sort.join
        if t.has_key? o
            t[o].push word
        else
            t[o] = [word]
        end
    end
    t.each_pair do |key, val|
        anagrams.push val
    end
    return anagrams
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
