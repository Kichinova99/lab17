io.write('Vvedite interval, a: ')
a = io.read()
a = tonumber(a)
io.write('Vvedite interbal, b: ')
b = io.read()
b = tonumber(b)
io.write('Vvedite pogreshnost: ')
eps = io.read()
eps = tonumber(eps)

n = 0
print('a', ' ', 'fa', ' ', 'b', ' ', 'fb', ' ', 'c', ' ', 'fc')
while (b - a > eps) do
        c = (a + b) / 2
        fa = math.cos(a) + math.sin(b)
        fb = math.cos(b) + math.sin(b)
        fc = math.cos(c) + math.sin(c)
        if fa * fc < 0 then
                b = c
        else
                a = c
        end
        n = n + 1
        print(string.format("%.5f", a), ' ', string.format("%.5f", fa), ' ', string.format("%.5f", b), ' ', string.format("%.5f", fb), ' ', string.format("%.5f", c), ' ', string.format("%.5f", fc))
end
print('fx: '..c..', n: '..n..', eps: '..eps)

