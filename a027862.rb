# Primes of the form k^2 + (k+1)^2
# Entry A027862 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A027862

require 'prime'
(1..100).each do |i|
  j = i * i + (i + 1) * (i + 1)
  print j, "\n" if j.prime?
end
