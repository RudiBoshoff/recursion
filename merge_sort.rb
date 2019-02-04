# Rudi Boshoff

n = [4,8,6,2,1,7,5,3]

def merge_sort(array)
  if array.length < 2 # cannot sort if it is one element
    return array
  else
    size = array.length
    # break array into two parts
    # sort left half
    # sort right half
    left = merge_sort(array[0..size/2-1])
    right = merge_sort(array[size/2..-1])
    # merge sorted halves
    merge(left, right)
  end
end

def merge(left, right)
    merged_arr = []
    # Check if left element is smaller than right element then keep the results
    until left.empty? || right.empty?
        merged_arr << (left.first <= right.first ? left.shift : right.shift)
    end

    merged_arr + left + right
end

print merge_sort(n)
