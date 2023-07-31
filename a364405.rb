# Numbers k such that k is never the smallest number which requires the maximum number
# of steps for the Euclidean algorithm for computing gcd(k,m) for any m, with k < m.
# Entry A364405 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A364405

def gcdsteps(k, m)
  k.zero? ? 0 : 1 + gcdsteps(m % k, k)
end

flags = [nil, *1..2000]
(1..flags.length).each do |m|
  scores = []
  (1..m).each do |k|
    scores << [gcdsteps(k, m), k]
  end
  flags[scores.sort_by { |n| -n[0] }.first[1]] = nil
end
puts flags[1..flags.length / 2].compact
