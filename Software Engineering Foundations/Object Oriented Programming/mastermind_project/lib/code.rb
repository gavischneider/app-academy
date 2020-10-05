# Install gems: gem install bundler
# Run rspec: bundle exec rspec spec/code_spec.rb

class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(chars)
    chars.all? {|char| POSSIBLE_PEGS.has_key?(char.capitalize)}
  end

  def initialize(chars)
    if !Code.valid_pegs?(chars)
      raise "Pegs are not valid!"
    end
    @pegs = chars.map {|char| char.upcase}
  end

  def self.random(num)
    code = []
    num.times {code << POSSIBLE_PEGS.keys.sample}
    Code.new(code)
  end

  def self.from_string(string)
    arr = string.split("")
    Code.new(arr)
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    count = 0
    (0...guess.length).each do |i|
      count += 1 if @pegs[i] == guess[i]  
    end
    count
  end

  def num_near_matches(guess)
    count = 0
    (0...guess.length).each do |i|
      count += 1 if self.pegs.include?(guess[i]) and @pegs[i] != guess[i]
    end
    count
  end

  def ==(guess)
    (0...guess.length).each do |i|
      if @pegs[i] != guess[i]  
        return false
      end
    end
    true
  end

end
