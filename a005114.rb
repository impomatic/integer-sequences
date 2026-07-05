# Untouchable numbers (nonaliquot numbers), numbers that are never returned by sumdiv
# Entry A005114 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A005114

def sumdiv(n)  # aliquot sum (sum of proper divisors)
  sum = 1
  i = 2
  while i * i < n
    sum += i + n / i if (n % i).zero?
    i += 1
  end
  sum += i if i * i == n
  sum
end

limit = 500
touched = [nil, *1..limit]
(1..limit * limit).each do |i|
  s = sumdiv(i)
  touched[s] = nil if s <= limit
end
puts touched[1..limit].compact
