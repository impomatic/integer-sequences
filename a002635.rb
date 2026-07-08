# Number of partitions of n into x squares (recursive algorithm)

# x = 1 OEIS entry A010052, https://oeis.org/A010052
# x = 2 OEIS entry A000161, https://oeis.org/A000161
# x = 3 OEIS entry A000164, https://oeis.org/A000164
# x = 4 OEIS entry A002635, https://oeis.org/A002635
# x = 5 OEIS entry A000174, https://oeis.org/A000174
# x = 6 OEIS entry A000177, https://oeis.org/A000177
# x = 7 OEIS entry A025422, https://oeis.org/A025422
# x = 8 OEIS entry A025423, https://oeis.org/A025423
# x = 9 OEIS entry A025424, https://oeis.org/A025424
# x = 10 OEIS entry A025425, https://oeis.org/A025425

# Set the default depth to x

def squares(n, depth = 4, high = Math.sqrt(n).to_i, terms = [], res = [])
  if depth.zero?
    res << terms if n.zero?
  else
    high.downto(0) { |r| squares(n - r * r, depth - 1, r, terms + [r], res) }
  end
  res
end

(1..100).each do |n|
  puts("#{n} #{squares(n).size}")  # or display squares(n) for a list of partitions
end
