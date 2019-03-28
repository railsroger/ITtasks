def binary(number)
  number.to_s(2).chars.map(&:to_i).reduce(:+)
end

def sort(arr)
  counts = Hash.new(0)
  hsh = arr.each.with_object({}) do |i, hash|
    hash[i] = binary(i)
    counts[i] += 1
  end.sort_by { |k, v| [v, k] }.to_h

  hsh.keys.each.with_object([]) do |i, arr|
    counts[i].times { arr << i }
  end
end

p sort([3,7,8,9])