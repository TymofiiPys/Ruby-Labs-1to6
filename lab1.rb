
print("Enter x: ")
x = gets.chomp.to_f
print("Enter a: ")
a = gets.chomp.to_f
print("Enter phi: ")
phi = gets.chomp.to_f
pi = Math.acos(-1)

term1 = 4.1 * (10 ** -1.7) / ((x - pi) * Math.sin(5 * x))
term2 = (Math.tan(x.abs)**3 - Math.log10(Math.sqrt(a + phi))) / Math.exp(pi)

y = term1 + term2

puts("Y = #{y}")
