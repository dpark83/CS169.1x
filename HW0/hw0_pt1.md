* Define a method sum which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.  
  * A running total is kept, which defaults to 0.
  * Each element is added to the total, if there a no elements in the array then total is 0.

* Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element.  
  * A running total is kept, which defaults to 0.
  * First the input is sorted then the number in elements is examined  
    * For only one element  
    * total is set to that element
  * If the number of elements is two or more  
    * The two last elements are accessed with a call to last(2)
    * Then total is set to the sum of the first and last elements of the above using first and last, without any arguments

* Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and returns true if any two distinct elements in the array of integers sum to n. An empty array or single element array should both return false.  
  * If the number of elements is two or more then  
    * Iterate though the input array (i is the index), a for loop is used as we are dealing with distinct elements - so if input[0] + input[0] == n it should return false
    * Iterate through the input array again (j is the index), a for loop is used - see above for why
      * If i and j are the same then use next
      * If input[i] + input[j] == n then return true
  * There is a return false as the last line in the method which acts like a catch all

The code was written in less time than it would have taken to setup a paired programming session (not including writing the code), know this is not really the point but still the time required to setup something up should be weighted with the benefit - some comes down to  "Is the juice worth the squeeze?".
