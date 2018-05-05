class Complement
  def self.of_dna (dna)
    return nil if dna.nil?

    hash = {
      'g' => 'c',
      'c' => 'g',
      't' => 'a',
      'a' => 'u',
      
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }

    index = 0

    while index < dna.length
      if hash[dna[index]].nil?
        raise ArgumentError.new
      else
        dna[index] = hash[dna[index]]
      end
      index += 1
    end

    return dna
  end

  def self.of_rna (dna)
    return nil if dna.nil?

    hash = {

      'C' => 'G',
      'G' => 'C',
      'U' => 'A',
      'A' => 'T',

      'c' => 'g',
      'g' => 'c',
      'u' => 'a',
      'a' => 't'

    }

    index = 0

    while index < dna.length
      if hash[dna[index]].nil?
        raise ArgumentError.new
      else
        dna[index] = hash[dna[index]]
      end
      index += 1
    end

    return dna
  end
end
