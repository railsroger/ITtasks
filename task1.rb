
str1 = 'abc12345def'
str2 = 'a1b2c3d4e'

def max_multiplication(str)
  return nil unless str.is_a?(String)
  return nil unless str.match?(/\d{4,}/)

  max = 0
  groups = str.scan(/[1-9]{4,}/)
  groups.each do |group|
    combination = group.to_i.digits

    i = 0
    while i <= combination.size - 4
      mult = combination[i..i+3].reduce(1,:*)
      max = mult if mult > max
      i += 1
    end
  end

  max
end


p max_multiplication(str1)
p max_multiplication(str2)