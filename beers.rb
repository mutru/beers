# encoding: utf-8

module Beer
  EMOJI = "🍺 "
  DOUBLE_EMOJI = "🍻 "
  ERROR = "🚨  🚔  🚔  🚔  🚨 "
end

class Fixnum
  def beers
    Beer::EMOJI * self
  end

  def double_beers
    Beer::DOUBLE_EMOJI * self
  end

  def pack
    if self == 6
      print_pack(2, 3)
    elsif self == 12
      print_pack(2, 6)
    elsif self == 24
      print_pack(4, 6)
    else
      raise BeerError.new
    end
  end

  alias beer beers

private

  def print_pack(rows, cols)
    (cols.beers + "\n") * rows
  end
end

class BeerError < RuntimeError
  def self.class
    Class.new do
      def to_s
        Beer::ERROR
      end
    end
  end

  def to_s
    Beer::ERROR
  end
end

class String
  def compact
    (length / 4).double_beers + ((length % 4) / 2).beers
  end

  def inspect
    "\n" + to_s
  end
end

class Random
  def self.beers(num = nil)
    # if you know the upper limit, you'll always want the maximum
    # number of beers, anyway
    if num
      num.ceil - 1
    else
      rand(100)
    end.beers
  end
end

class Time
  def beer?
    true
  end
end

puts "Loading BEER FRAMEWORK"
sleep 2
puts "... loaded!"
