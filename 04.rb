def solution(a)
  tmp = []

  a.each_with_index do |i, index|
    tmp << [i, index]
  end

  tmp.sort_by! { |i| i[0] }

  items = []

  key = tmp.first[0]
  groups = 1
  gitems = 0

  tmp.each do |i|
    if i[0] != key
      key = i[0]
      groups += 1
      items << gitems
      gitems = 0
    end

    gitems += 1
  end

  items << gitems

  items.reduce { |sum, n| sum + (n - 1) * (n) / 2 }
end

puts solution([3, 5, 6, 3, 3, 5]).inspect
