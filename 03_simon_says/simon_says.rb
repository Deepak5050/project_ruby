def echo(say)
	say
end

def shout(say)
	say.upcase
end

def repeat(say, n=2)
	([say] * n).join(" ")
end

def start_of_word(s, n)
	s[0...n]
end

def first_word(s)
	a = s.split
	a[0]
end

def titleize(s)
  words = s.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end