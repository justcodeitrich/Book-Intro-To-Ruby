# What will the following programs return? What is the value of arr after each?

1. arr = ["b", "a"] - # array arr is assigned to values "b" and "a"

   arr = arr.product(Array(1..3))
   # Above is equivalent as ["b","a"].product([1,2,3])
   # Output: arr = [["b",1], ["b",2], ["b",3], ["a",1], ["a",2] ["a",3]]

   arr.first.delete(arr.first.last)
   # (arr.first.last) - Will select the first array (["b",1]) from arr and within it select the last element (1).
   # arr.first.delete(1) - Will select the first array from arr and delete by value(1)
   # Output: arr = [["b"], ["b",2], ["b",3], ["a",1], ["a",2] ["a",3]] 


2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   # - ([Array(1..3)]) - results into a single arrray of [[1,2,3]]
   # - Equivalent to - arr = ["b","a"].product([[1,2,3]])
   # Output: [["b",[1,2,3]], ["a",[1,2,3]]]
   
   arr.first.delete(arr.first.last)
   # (arr.first.last) - selects [1,2,3] in first element
   # arr.first.delete([1,2,3])
   # Output: [["b"], ["a",[1,2,3]]]