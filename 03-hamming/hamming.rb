class Hamming
  def self.compute (strand_1, strand_2)
    h_score = 0
    index = 0

    if strand_1 == nil || strand_2 == nil
      return nil
    elsif strand_1.length < 1 || strand_1.length < 1
      return h_score
    elsif strand_1.length != strand_2.length
      raise ArgumentError.new
    else
      while index < strand_1.length
        if strand_1[index] != strand_2[index]
          h_score += 1
        end
        index += 1
      end
    end
    return h_score
  end
end
