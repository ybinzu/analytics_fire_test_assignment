def solution(a)
  index = 0

  last_error = nil
  last_pos = nil

  while index < a.size - 1
    if a[index] > a[index + 1]
      last_error = a[index]
      last_pos = index
    elsif last_error && a[index + 1] >= last_error
      return index + 1 - last_pos
    end

    index += 1
  end

  if last_error
    return a.size - last_pos + 1
  end

  0
end

puts solution([1, 2, 6, 5, 5, 8, 9]).inspect

puts solution([1,2,3,4,5,6]).inspect
puts solution([1,2,3,4,5,6]).inspect
