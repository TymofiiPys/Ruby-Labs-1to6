a  = Array.new(15)

i = 0
15.times do
  a[i] = rand(100) - 50
  i += 1
end

p a

c = Array.new(15)

i = 0
j = 0

15.times do
  if(a[j] == 0)
    c[i] = j
    i += 1
  end
  j += 1
end

j = 0

15.times do
  if(a[j] < 0)
    c[i] = j
    i += 1
  end
  j += 1
end

j = 0

15.times do
  if(a[j] > 0)
    c[i] = j
    i += 1
  end
  j += 1
end

p c


a = Array.new(3)

i = 0
3.times do
  a[i] = rand(100) - 50
  i += 1
end

b = Array.new(3)
b.each_index {|i|
    b[i] = rand(100) - 50
}

require 'matrix'

vector_a = Vector[a]
matrix_b = Vector[b]

def vectorbymatr(vect, matr)
  raise "Nonconformant arguments" if vect.size != matr.size
  m = vect[0].size
  n = matr[0].size
  prod = (0...m).map{Array.new(n)}
  k = 1
  p prod
  m.times do |i|
    n.times do |j|
      k.times do |kk|
        prod[i][j] = vect[0][i] * matr[0][j]
        puts prod[i][j]
        kk += 1
      end
      j += 1
    end
    i += 1
  end
  prod
end

puts "Добуток вектор-стовпця на матрицю"
puts vector_a
puts
puts matrix_b

p vectorbymatr(vector_a, matrix_b)
