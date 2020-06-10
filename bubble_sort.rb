# frozen_string_literal: true

def bubble_sort(array)
  iterations = array.length - 1
  iterations.times do
    iterations.times do |counter|
      array[counter], array[counter + 1] = array[counter + 1], array[counter] if array[counter] > array[counter + 1]
    end
  end
end

bubble_sort([6, 5, 4, 3, 2, 1])

def bubble_sort_by(array)
  iterations = array.length - 1
  iterations.times do
    iterations.times do |counter|
      if yield(array[counter], array[counter + 1]).positive?
        array[counter], array[counter + 1] = array[counter + 1], array[counter]
      end
    end
  end
end

bubble_sort_by(%w[watermelon hello hey banana kiwi apple]) { |left, right| left.length <=> right.length }
