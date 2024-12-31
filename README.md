# Ada Unchecked_Conversion Bug
This repository demonstrates a potential bug related to Ada's `Unchecked_Conversion` function when converting between `Integer` and `Float` types.  The issue arises from the potential loss of precision when a large `Integer` is converted to a `Float` and then back to an `Integer`.  The resulting integer may not match the original.

## How to Reproduce
1. Compile and run `bug.ada`. 
2. Observe the output. The second line (the reconverted Integer value) may not exactly match the original Integer value due to the limitation of floating-point precision.

## Solution
The solution is to use a more robust conversion method that accounts for potential precision loss or to use types better suited to the range of expected values.  See `bugSolution.ada` for an example using `Ada.Text_IO.Get` to handle this type conversion correctly, which avoids direct conversion between integer and float in this case and handles the potential exceptions more safely. Note that the `bugSolution.ada` file addresses the data loss problem when converting between Integer and Float and then converting the Float back to an Integer. This is achieved by handling exceptions and providing better error handling.