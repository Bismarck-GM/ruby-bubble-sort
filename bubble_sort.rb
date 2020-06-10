# frozen_string_literal: true

# def bubble_sort(array)
#   iterations = array.length - 1
#   iterations.times do
#     iterations.times do |counter|
#       array[counter], array[counter + 1] = array[counter + 1], array[counter] if array[counter] > array[counter + 1]
#       p array
#     end
#   end
# end

# bubble_sort([6, 5, 4, 3, 2, 1])

def bubble_sort_by(array)
  iterations = array.length - 1
  iterations.times do |counter|
    if yield(array[counter], array[counter + 1]).negative?
      array[counter], array[counter + 1] = array[counter + 1], array[counter]
      p array
    end
  end
end

bubble_sort_by(%w[hi banaan appel hello hey]) { |left, right| left <=> right }
