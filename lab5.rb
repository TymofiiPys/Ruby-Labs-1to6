PI = 3.14159

def h(a, b, n)
  (b - a) / n
end

def prm(a, b, n, name)
  sum = 0.0
  h = h(a,b,n)
  xi = a + h / 2
  (n-1).times do
    if name == 1
      sum += 1 / ((xi + 1) * Math.sqrt(xi + 1))
    else
      sum += Math.tan(xi / 2 + PI / 4)**3
    end
    xi += h
  end
  sum * h
end

def trp(a, b, n, name)
  sum = 0.0
  if name == 1
    sum += (1 / ((a + 1) * Math.sqrt(a + 1)) ) / 2 + (1 / ((b + 1) * Math.sqrt(b + 1)) ) / 2
  else
    sum += (Math.tan(a / 2 + PI / 4) **3) / 2 + (Math.tan(b / 2 + PI / 4) **3) / 2
  end
  h = h(a,b,n)
  xi = a + h
  (n-1).times do
    if name == 1
      sum += 1 / ((xi + 1) * Math.sqrt(xi + 1))
    else
      sum += Math.tan(xi / 2 + PI / 4) **3
    end
    xi += h
  end
  sum * h
end

puts "Rect"
puts "f1: " +  prm(0.3, 0.3, 1, 1).to_s
puts "f2: " +  prm(0.0, PI / 4, 10, 2).to_s

puts "Trap"
puts "f1: " +  trp(0.3, 0.3, 1, 1).to_s
puts "f2: " +  trp(0.0, PI / 4, 10, 2).to_s

def fact(n)
  prod = 1
  i = 1
  n.times do
    prod *= i
    i += 1
  end
  prod
end

def sumfunc(epsilon=0.001)
  n = 16
  sum = 0.0
  (58-16).times do
    sum += ((-1) ** n) * (2 * n * n + 1) / (fact(2 * n)).to_f
  end
  sum
end

puts "Sum: " + sumfunc.to_s
