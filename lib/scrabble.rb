class Scrabble

  def score(word)
    score = 0
    return score if word == nil || word.empty?
    word.each_char {|l| score += point_values[l.upcase]}
    score
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

  def score_with_multipliers(word, multi, doubler = 1)
    score = 0
    letter = word.upcase.split("")
    letter.each_with_index {|v,i|score += (point_values[v] * multi[i]) * doubler}
    score += (doubler * 10) if letter.length > 6
    score
  end

end
