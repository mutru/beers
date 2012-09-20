# encoding: utf-8

module Beer
  EMOJI = "🍺 "
  DOUBLE_EMOJI = "🍻 "
end

class Fixnum
  def beers
    Beer::EMOJI * self
  end

  def double_beers
    Beer::DOUBLE_EMOJI * self
  end

  alias beer beers
end

class String
  def compact
    (length / 4).double_beers + ((length % 4) / 2).beers
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
