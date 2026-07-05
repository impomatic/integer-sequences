# Left factorial !n = sum of the factorials 0! .. (n-1)!
# Entry A003422 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A003422

sum = 0
fact = 1
100.times do |i|
  puts sum += fact
  fact *= i + 1
end
