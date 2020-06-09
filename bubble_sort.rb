# frozen_string_literal: true

def bubble_sort_by(array)
  iterations = array.length - 1
  iterations.times do |counter|
    if yield(array[counter], array[counter + 1]).negative?
      array[counter], array[counter + 1] = array[counter + 1], array[counter]
      p array
    end
  end
end

bubble_sort_by(%w[hi hello hey]) { |left, right| left <=> right }
