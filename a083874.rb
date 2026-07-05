# Numbers where sigma(n) + tau(n) = 2n (sum of divisors + count of divisors)
# Entry A083874 in The On-Line Encyclopedia of Integer Sequences, https://oeis.org/A083874

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

def sigma(n)  # sum of divisors
  sumdiv(n) + n
end

def tau(n)  # count of divisors
  num = 1
  i = 2
  while i * i <= n
    if (n % i).zero?
      e = 0
      while (n % i).zero?
        n /= i
        e += 1
      end
      num *= e + 1
    end
    i += 1
  end
  n > 1 ? num * 2 : num
end

(1..1000000).each do |i|
  puts i if sigma(i) + tau(i) == 2 * i
end
