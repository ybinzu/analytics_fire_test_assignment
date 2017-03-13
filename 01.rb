def solution(a)
  return unless a

  index = 0
  result = ''

  tmp = a.tr('^[0-9]', '')
  tmp.each_char do |ch|
    if index.positive? && index % 3 == 0
      result += '-'
    end

    result += ch

    index += 1
  end

  if result.size > 4 && result[result.size - 2] == '-'
    result.slice!(result.size - 2)
    result.insert(result.size - 2, '-')
  end

  result
end

puts solution('00-44  48 5555 8361 ')

puts solution('0 - 22 1985--324')
puts solution('03212332134')

puts solution('1231343')
