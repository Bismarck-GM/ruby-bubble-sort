require_relative 'bubble_sort.rb'
p bubble_sort([6, 5, 4, 3, 2, 1])
p bubble_sort_by(%w[watermelon hello hey banana kiwi apple]) { |left, right| left.length <=> right.length }
