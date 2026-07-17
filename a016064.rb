# Smallest side lengths of almost-equilateral Heronian triangles
# Entry A016064 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A016064

(1..1e9).each do |a|
  b = a + 1
  c = b + 1
  s = a + b + c
  t = s	 * (s - 2 * a) * (s - 2 * b) * (s - 2 * c)
  x = Integer.sqrt(t)
  puts a if x * x == t
end
