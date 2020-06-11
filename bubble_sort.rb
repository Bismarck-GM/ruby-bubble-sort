def bubble_sort(array)
  iterations = array.length - 1
  iterations.times do
    iterations.times do |counter|
      array[counter], array[counter + 1] = array[counter + 1], array[counter] if array[counter] > array[counter + 1]
    end
  end
  array
end

def bubble_sort_by(array)
  iterations = array.length - 1
  iterations.times do
    iterations.times do |counter|
      if yield(array[counter], array[counter + 1]).positive?
        array[counter], array[counter + 1] = array[counter + 1], array[counter]
      end
    end
  end
  array
end
