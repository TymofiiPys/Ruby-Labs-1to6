a = true
b = true
c = false
x = -20
y = 60
z = 4

p !(a | b) & (a & !b)

p (z != y) <=> (6 >= y) & a | b & c & (x >= 1.5)

p (8 - x * 2 <= z) & (x**2 < y**2) | (z >= 15)

p (x > 0) & (y < 0) | (z >= (x * y + (-y/x)) + (-z))

p !(a | b & !(c | !a | b))

p (x**2 + y**2 >= 1) & ((x >= 0) & (y >= 0))

p (a & (c & b | b | a) | c) & b

n = 3
m = -6
p = false
q = false

puts
p (n / m + m / n > 3) & (p & q | !p & q)

y = 0

x = 4

if -4 < x && x <= 0
  y = (Math.abs(x - 2) / (x**2 * Math.cos(x))) ** (1/7)
elsif 0 < x && x <= 12
  y = 1 / (Math.tan(x + 1 / Math.exp(x)) / (Math.sin(x) ** 2)) ** (2/7)
else
  y = 1 / (1 + (x / (1 + (x / (1 + x)))))
end

x = 2

ans = 1

10.times do |i|
  ans += (-1) ** (i + 1) * (i + 2) * (x ** (i + 1)) / (i + 3)
end

p ans

ans = 0

9.times do |i|
  ans += 1 / (3 ** i).to_f
end

p ans
