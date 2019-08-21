
class PigLatinizer
  attr_accessor :phrase
  
  def piglatinize(phrase)
    @split_word = phrase.split("")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    if vowels.include?(@split_word[0])
      latinized_word = begins_with_vowel.join("")
    else
      latinized_word = begins_with_consonant.join("")
    end
    latinized_word
  end

  def to_pig_latin(sentence)
    words_in_sentence = sentence.split(" ")

    pig_latinized_words = words_in_sentence.collect do |word|
      self.piglatinize(word)
    end

    new_sentence = pig_latinized_words.join(" ")
  end

  def begins_with_vowel
    vowel_word = @split_word << "way"
  end

  def begins_with_consonant
    if @split_word[0] == "q" && @split_word[1] == "u"
      qu = @split_word[0, 2].join("")
      spliced_word = @split_word[2..-1]
      spliced_word << qa + "ay"
    elsif @split_word[0] == "p" && @split_word[1] =="l"
      pl = @split_word[0, 2].join("")
      spliced_word = @split_word[2..-1]
      spliced_word << pl + "ay"
    elsif @split_word[0] == "t" && @split_word[1] =="h"
      th = @split_word[0, 2].join("")
      spliced_word = @split_word[2..-1]
      spliced_word << th + "ay"
    elsif @split_word[0] == "s" && @split_word[1] =="p" && @split_word[2] == "r"
      spr = @split_word[0, 3].join("")
      spliced_word = @split_word[3..-1]
      spliced_word << spr + "ay"
    elsif @split_word[0] == "p" && @split_word[1] =="r"
      pr = @split_word[0, 2].join("")
      spliced_word = @split_word[2..-1]
      spliced_word << pr + "ay"
    elsif @split_word[0] == "w" && @split_word[1] =="h"
      wh = @split_word[0, 2].join("")
      spliced_word = @split_word[2..-1]
      spliced_word << wh + "ay"
    elsif @split_word[0] == "s" && @split_word[1] =="k"
      sk = @split_word[0, 2].join("")
      spliced_word = @split_word[2..-1]
      spliced_word << sk + "ay"
    elsif (@split_word[0] == "s" || @split_word[0] == "S") && @split_word[1] =="t" && @split_word[2] == "r"
      str = @split_word[0, 3].join("")
      spliced_word = @split_word[3..-1]
      spliced_word << str + "ay"
    else
      first_letter = @split_word[0]
      spliced_word = @split_word[1..-1]
      spliced_word << first_letter + "ay"
    end
  end
end 