require 'benchmark'
require_relative 'sorting'

include Sorting

Benchmark.bmbm do |b|
    b.report("Insertion Sort: ") do
        array = [2, 5, 3, 1, 4, 2, 0]
        insertion_sort(array)
    end

    b.report("Selection Sort: ") do
        array = [2, 5, 3, 1, 4, 2, 0]
        selection_sort(array)
    end

    b.report("Bubble Sort: ") do
        array = [2, 5, 3, 1, 4, 2, 0]
        bubble_sort(array)
    end

    b.report("Counting Sort: ") do
        array = [2, 5, 3, 1, 4, 2, 0]
        counting_sort(array)
    end

    b.report("Merge Sort: ") do
        array = [2, 5, 3, 1, 4, 2, 0]
        merge_sort(array, 0, array.length - 1)
    end

    b.report("Heap Sort: ") do
        array = [2, 5, 3, 1, 4, 2, 0]
        heap_sort(array)
    end

    b.report("Quick Sort: ") do
        array = [2, 5, 3, 1, 4, 2, 0]
        quick_sort(array)
    end

    b.report("Pancake Sort: ") do
        # stuff here
    end
end