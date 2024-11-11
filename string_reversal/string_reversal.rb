def string_reversal(str)
  start_point = 0
  end_point = str.size - 1

  while start_point < end_point
    tmp = str[start_point]
    str[start_point] = str[end_point]
    str[end_point] = tmp

    start_point += 1
    end_point -= 1
  end

  str
end

puts string_reversal("abcd_1234")
