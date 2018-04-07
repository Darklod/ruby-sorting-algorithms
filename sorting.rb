module Sorting

  def insertion_sort(array)
      for i in (0...array.length)
          value = array[i]
          j = i - 1
          while j >= 0 && array[j] > value do
              array[j + 1] = array[j]
              j = j - 1
              array[j + 1] = value
          end
      end
  end

  def selection_sort(array)
      for k in (0...array.length) do
          min_index = k
          for i in ((k + 1)...array.length)
              if (array[i] < array[min_index]) then
                  min_index = i
              end
          end
          if (min_index != k) then
              array[k], array[min_index] = array[min_index], array[k]
          end
      end
  end

  def bubble_sort(array)
      for i in (0...array.length)
          j = i - 1
          for j in (0...array.length)
              if array[i] < array[j] then
                  array[j], array[i] = array[i], array[j]
              end
          end
      end
  end

  def counting_sort(array)
      min = array[0]
      max = array[0]

      for i in (0...array.length)
          if array[i] > max then
              max = array[i]
          elsif array[i] < min then
              min = array[i]
          end
      end

      count = []
      for i in (min..max)
          count[i] = 0
          for j in (0...array.length)
              if (array[j] == i) then
                  count[i] += 1
              end
          end
      end

      k = 0                                      
      for i in (0...count.length)
          while count[i] > 0 do                       
              array[k] = i + min
              k = k + 1
              count[i] = count[i] - 1
          end
      end
  end

  def merge(array, left, center, right)
      i = left
      j = center + 1
      k = 0
      b = []

      while i <= center && j <= right do
          if array[i] <= array[j]
              b[k] = array[i]
              i = i + 1 
          else
              b[k] = array[j]
              j = j + 1
          end
          k = k + 1
      end

      while i <= center do
          b[k] = array[i]
          i = i + 1
          k = k + 1
      end

      while j <= right do
          b[k] = array[j]
          j = j + 1
          k = k + 1
      end

      for k in (left..right)
          array[k] = b[k - left]
      end
  end

  def merge_sort(array, left=0, right=array.length-1)
      if left < right
          center = (left + right) / 2
          merge_sort(array, left, center)
          merge_sort(array, center + 1, right)
          merge(array, left, center, right)
      end
  end

  def min_heapify(array) 
      i = array.length / 2
      array.insert(0, nil)

      while i > 0 do
          if i * 2 + 1 <= array.length - 1 then
              smaller_index = array[i * 2] <= array[i * 2 + 1] ? i * 2 : i * 2 + 1
          else 
              smaller_index = i * 2
          end

          if array[smaller_index] <= array[i] then
              array[smaller_index], array[i] = array[i], array[smaller_index]
          end

          i = i - 1
      end
      
      array.delete_at(0)
  end

  def heap_sort(array)
      sorted = []

      for i in 0...array.length
          # calcola il min heap
          min_heapify(array)

          # scambia il primo con l'ultimo
          array[0], array[-1] = array[-1], array[0]

          # toglie l'ultimo e lo mette nella lista ordinata
          sorted << array.pop
      end

      array = array.concat(sorted)
  end

  def quick_sort(array)
    # unimplemented
  end
end