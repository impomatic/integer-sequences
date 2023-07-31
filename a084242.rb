# Least k, 1 <= k <= n, such that the number of elements of the continued fraction for n/k is maximum
# Entry A084242 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A084242

def gcdsteps(k, m)
  k.zero? ? 0 : 1 + gcdsteps(m % k, k)
end

(1..10000).each do |m|
  scores = []
  (1..m).each do |k|
    scores << [gcdsteps(k, m), k]
  end
  puts "#{m} #{scores.sort_by { |n| -n[0] }.first[1]}"
end
