# frozen_string_literal: true

def bubble_sort(array)
  iterations = array.length - 1
  iterations.times do
    iterations.times do |counter|
      array[counter], array[counter + 1] = array[counter + 1], array[counter] if array[counter] > array[counter + 1]
      p array
    end
  end
end

bubble_sort([6, 5, 4, 3, 2, 1])
