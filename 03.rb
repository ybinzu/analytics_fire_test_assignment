def fact(i)
  (1..i).reduce(:*) || 1
end

def solution(a)
  a = a.to_s.tr('0', '').split('')
  appears = a.group_by { |i| i }

  uniques = 0

  appears.each do |k, v|
    uniques += 1 if v.size == 1
  end

  if uniques == a.size
    fact(a.size)
  else
    fact(a.size) / fact(uniques)
  end
end

puts solution(1213)
puts solution(100)
puts solution(123)
