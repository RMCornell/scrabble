class Scrabble
  attr_reader :word_score
  attr_accessor :total_score

  def point_values
    {
        "A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4,
        "I"=>1, "J"=>8, "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3,
        "Q"=>10, "R"=>1, "S"=>1, "T"=>1,"U"=>1, "V"=>4, "W"=>4, "X"=>8,
        "Y"=>4, "Z"=>10, " "=>0
    }
  end

  def score(word)
    word_score = 0

    if word.nil?
      word_score += 0
    else
      scoring_word = word.upcase.split("")
      scoring_word.each do |letter|
        point = point_values.fetch(letter)
        word_score += point
      end
    end
    return word_score
  end



end

# if __FILE__ == $0
#
#   input             = ARGV[0]
#   message           = File.readlines(input)
#   converted_message = Chisel.new(message).convert_to_html
#   html_file         = File.open(ARGV[1], 'w')
#   html_file << converted_message
#   html_file.close
#   # puts "Converted #{input} (#{message.count("\n")} lines) to #{output} (#{converted_message.count("<\n>")} lines)"
# end

scrabble = Scrabble.new
puts scrabble.score("Fuck")
puts scrabble.score("fuck")




