# Rudi Boshoff

def fibs_rec(n)
  return 0 if n == 0
  return 1 if n == 1
  fibs_rec(n-1) + fibs_rec(n-2)
end


def fibs(n)
  solutions = [0, 1]
  while solutions.length <= n
    solutions << solutions[-1] + solutions[-2]
  end
  solutions[n]
end

puts "The nth value in the Fibonacci Sequence is:"
n = gets.chomp.to_i
# n = 10
print "fibs_rec(#{n}) = "
puts  fibs_rec(n)
print "fibs(#{n}) = "
puts fibs(n)
