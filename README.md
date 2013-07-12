Descriptive Statistics
===============

Overview
--------

This gem adds methods to the Enumerable module to allow easy calculation of basic 
descriptive statistics for a set of data:
* Number - the sample size
* Sum
* Mean
* Median
* Mode
* Variance
* Standard Deviation
* Percentile - A method returning the value corresponding to the supplied percentile.
  For example, `data.percentile(50)` should equal `data.median`.
* Descriptive statistics - A method returning a hash with the above keys (as symbols). 
  Percentile is represented as the first three quartes in the symbols `q1`, `q2` and 
  `q3`.
  
Examples
--------

```
> require 'descriptive_statistics'
 => true 
> data = [2,6,9,3,5,1,8,3,6,9,2]
 => [2, 6, 9, 3, 5, 1, 8, 3, 6, 9, 2] 
> data.number
 => 11.0 
> data.sum
 => 54 
> data.mean
 => 4.909090909090909 
> data.median
 => 5.0 
> data.variance
 => 7.7190082644628095 
> data.standard_deviation
 => 2.778310325442932 
> data.percentile(70)
 => 6.0 
> data.percentile(70)
 => 6.0 
> data.descriptive_statistics
 => {:number=>11.0, 
  :sum=>54, 
  :variance=>7.7190082644628095, 
  :standard_deviation=>2.778310325442932, 
  :min=>1, 
  :max=>9, 
  :mean=>4.909090909090909, 
  :mode=>2, 
  :median=>5.0, 
  :range=>8, 
  :q1=>2.5, 
  :q2=>5.0, 
  :q3=>7.0}
> [4,2,3,1,4,5,6,8,0].mode
 => 4
> [17, 5, 3, 23, 33, 30, 45, 37].range
 => 42
```

Alternatively, you can use `DescriptiveStatistics` on individual 
objects, avoiding a global monkey patch.

```
> require 'descriptive_statistics/safe'
 => true
> data = [2,6,9,3,5,1,8,3,6,9,2]
 => [2, 6, 9, 3, 5, 1, 8, 3, 6, 9, 2] 
> data.extend(DescriptiveStatistics)
 => [2, 6, 9, 3, 5, 1, 8, 3, 6, 9, 2] 
> data.number
 => 11.0 
> data.sum
 => 54 
```

Ports
-----
[Javascript](http://github.com/FGRibreau/descriptive_statistics)

[Python](http://github.com/gleicon/py_descriptive_statistics)

[Go](https://github.com/gleicon/go-descriptive-statistics)

License
-------
Copyright (c) 2013 
Derrick Parkhurst (derrick.parkhurst@gmail.com), 
Gregory Brown (gregory.t.brown@gmail.com),
Daniel Farrell (danielfarrell76@gmail.com),
Graham Malmgren

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

