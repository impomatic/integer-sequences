# Left factorial mod n (!n mod n) where !n is the sum of factorials 0! .. (n-1)!
# Entry A049782 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A049782

def left_fact_mod(n)
  sum = 0
  fact = 1
  n.times do |i|
    sum = (sum + fact) % n
    fact = (fact * (i + 1)) % n
  end
  sum
end

(1..100).each do |n|
  puts left_fact_mod(n)
end
