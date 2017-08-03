# Warmup 1

def range(start, fin)
  return [start] if start == fin - 1
  [start] + range(start + 1, fin)
end

# Warmup 2

def iterative_sum(array)
  array.reduce(:+)
end

def recursive_sum(array)
  return array.first if array.length == 1
  array[0] + recursive_sum(array[1..-1])
end

# Exponentiation

def expon1(b, n)
  return 1 if n == 0
  b * expon1(b, n - 1)
end

def expon2(b, n)
  return 1 if n == 0
  return b if n == 1

  if n.even?
    return (expon2(b, n / 2) * expon2(b, n / 2))
  else
    return b * (expon2(b, (n - 1) / 2) * expon2(b, (n - 1) / 2))
  end

end

# Deep Dup

class Array
  def deep_dup
    self.map do |ele|
      if ele.is_a?(Array)
        ele.deep_dup
      else
        ele.dup
      end
    end
  end
end

# Fibonachi

def fibona(n)
  return [1] if n <= 1
  return 0 if nil

  prior = fibona(n-1)
  return prior + [prior[-1].to_i + prior[-2].to_i]

end

def fibono_i(n)
  array = [0,1]
  n - 2.times do
    array << (array[-2] + array[-1])
  end
  array[1..-1]
end

# Array Subsets

def array_subsets(arr)
  return [arr] if arr.length == 0
  subs = array_subsets(arr[0..-2])
  subs + subs.map {|n| n + [arr[-1]]}
end

# Permutations
require 'byebug'
class Array
  def permutations

    return [] if self.length == 0 # base cases
    return [self.first] if self.length == 1

    sub_perms = [self[1..-1].permutations] # inductive step

    # byebug

    res = sub_perms.each do |ele| # stitching answer together / return statement
      (ele.length).times do |i|
        ele.insert(i, self[0])
      end
    end

    
  end
end

# def bsearch(array,arg)
#   return nil if array.length == 1 && array != arg
#   if arg == array[array.length / 2]
#     return array.length / 2
#   elsif arg > array[array.length / 2]
#     bsearch(array[(array.length / 2)..-1] ,arg)
#   else
#     bsearch(array[0..(array.length / 2)], arg)
#   end
#
# end















# def iterative_subsets(array)
#   final = []
#   array.each_index do |idx|
#     final <<
#
#     # array.take(1) + array_subsets(array.drop(1))
#   end
#   final
# end




# return array if array.length == 0  # An array size 1 is already rotated
# return array.take(1) + array_subsets(array.drop(1))
# permu << array.rotate(1)
# permu
# # return ((arr[0] + array_subsets(rest_of_array)) + (arr[1] + array_subsets(rest_of_array)) + (arr[2] + array_subsets(rest_of_array)))
