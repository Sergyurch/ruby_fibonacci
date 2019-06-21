def fibs(n)
  arr = [0]
  i = 1
  while i <= n do
    if i == 1
      arr.push(i)
    else
      arr.push(arr[-1] + arr[-2])
    end
    i += 1
  end
  arr.to_s
end

def fibs_rec(n)
  (n == 1) ? [0,1] : fibs_rec(n-1) << fibs_rec(n-1)[-1] + fibs_rec(n-1)[-2]
end

puts fibs(10)
puts fibs_rec(10).to_s

