def substrings(string, dictionary)
  result = Hash.new()
  lower_str = string.downcase
  count =
  dictionary.each do |value|
    count = lower_str.scan(value).length
    result[value] = count unless count == 0
  end
  return result
end
