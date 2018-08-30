def sluggish_octopus(arr)
  longest = arr[0]

  arr.each_with_index do |fish, idx|
    arr.each_with_index do |fish2, idx2|
      next if idx2 < idx
      if fish.length > longest.length
        longest = fish
      end
    end
  end
  p longest
end



def merge_sort(arr, &prc)
  prc ||= Proc.new { |x, y| x <=> y }
  return arr if arr.length == 1

  mid = arr.length / 2

  left = merge_sort(arr[0...mid], &prc)
  right = merge_sort(arr[mid..-1], &prc)

  merge(left, right, &prc)
end

def merge(left, right, &prc)
  prc ||= Proc.new { |x, y| x <=> y }

  result = []

  until left.empty? || right.empty?
    if prc.call(left.first, right.first) == 1
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end


def linear_fish(array)
  longest = array[0]

  array.each do |fish|
    longest = fish if fish.length > longest.length
  end
  p longest
end


fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# sluggish_octopus(fish_arr) XXXX
merge_sort(fish_arr)
# linear_fish(fish_arr) XXXX










#
