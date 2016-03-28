def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array_sum)
	array_sum.inject(0) { |sum, x| sum + x}
end


def multiply(*numbers)
	result = 1
	numbers.each { |i| result = result * i}
	result
end


def power(base,power)
  result = 1
  while (power > 0) do
    result *= base
    power -= 1
  end
  result
end


def factorial(n)
	result = 1
	n.times { |i| result *= (i+1)}
	result
end