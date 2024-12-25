# Hidden Laziness Bug in Haskell
This repository demonstrates a subtle bug that can occur in Haskell due to the lazy evaluation of the `sort` function. The bug arises when a sorted list is not fully evaluated before being used in subsequent computations.  The example uses a simple list, but in larger programs, this can lead to performance issues or incorrect results.

## Bug Description
The `sort` function in `Data.List` is lazy, meaning it doesn't sort the list until its elements are needed.  If the sorted list isn't fully consumed, the sorting never completes.

## Solution
The solution involves ensuring that the sorted list is fully evaluated before being used in other parts of the program. This can be accomplished using functions like `seq` or simply forcing evaluation through a loop or other means.