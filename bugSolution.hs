```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  -- Force evaluation of ys before printing to avoid lazy behavior
  let _ = ys `seq` ()
  print ys
```
Alternatively, one could use a strict data structure instead of a list, or employ a different sorting algorithm which processes the list in a more eager way.  Explicitly forcing evaluation makes the code's behavior more predictable and prevents potential issues stemming from lazy evaluation.