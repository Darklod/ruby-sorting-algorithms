
# ruby-sorting-algorithms
 
 ## Algorithms List
 - insertion_sort
 - selection_sort
 - counting_sort
 - bubble_sort
 - merge_sort
 - heap_sort
 - quick_sort       - not implemented yet
 - pancake_sort  - not implemented yet

## Usage
1) Use my test.rb file 
	uncomment the algorithm you want to test and run the script 
	
	    ruby test.rb

2) Otherwise you can create your own ruby script, include sorting.rb

		require_relative  'sorting'
		include  Sorting

	Then call the algorithm you want and print the array
		
		array = [4, 5, 8, 3, 9, 2, 0, 1]
		heap_sort(array)	  
		print(array)

## Benchmarking
I have used the Benchmark library for testing my algorithms performance. 
You can find the library documentation [here](https://ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/index.html).
Running the benchmarking.rb file you can see the result of all algorithms.

    ruby benchmarking.rb
