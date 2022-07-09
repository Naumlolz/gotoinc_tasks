arr = []

while arr.length <= 10
  x = rand(0..99)
  arr.push(x)
end

p arr
p arr.minmax
