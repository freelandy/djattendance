************************************************************************
file with basedata            : cm437_.bas
initial value random generator: 927062030
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  134
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20       13       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          1           9
   3        4          3           5   7  10
   4        4          2          12  16
   5        4          3           6  13  14
   6        4          3          11  12  16
   7        4          2           8  12
   8        4          3          11  13  14
   9        4          2          10  17
  10        4          2          11  13
  11        4          1          15
  12        4          1          17
  13        4          2          15  16
  14        4          2          15  17
  15        4          1          18
  16        4          1          18
  17        4          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       7    9    9    8
         2     6       5    8    8    6
         3     6       4    6    8    7
         4    10       4    4    6    4
  3      1     6       9    4    9    8
         2     7       6    3    7    8
         3    10       6    3    7    6
         4    10       6    1    5    7
  4      1     2       9    4    9    6
         2     5       8    3    8    6
         3     6       4    2    7    4
         4    10       4    1    7    4
  5      1     2       2    9    4    7
         2     3       2    7    3    6
         3     3       2    6    2    7
         4     6       2    5    1    6
  6      1     1       6    7   10    7
         2     3       6    7    9    6
         3     7       4    7    9    5
         4    10       1    7    8    3
  7      1     1       7    7   10    8
         2     2       6    7    8    8
         3     5       6    6    8    8
         4    10       5    6    6    8
  8      1     5       6    9    5   10
         2     7       6    8    5    9
         3     8       1    6    4    9
         4     8       2    5    3    9
  9      1     2       6    9    8    8
         2     2       6   10    9    7
         3     5       6    9    7    7
         4     7       6    8    3    7
 10      1     4      10    5    8    4
         2     6      10    5    7    3
         3     7      10    4    4    3
         4     8      10    2    2    2
 11      1     1       5    4    7    5
         2     2       4    3    5    5
         3     3       4    3    3    4
         4     5       4    3    3    3
 12      1     3       8    9   10    5
         2     3       9    9   10    4
         3     5       7    6    1    4
         4     5       4    7    5    4
 13      1     1       6    7   10    6
         2     3       5    5    7    6
         3     4       5    3    4    5
         4     9       4    3    3    5
 14      1     4       6    8    9    9
         2     6       6    8    9    5
         3     8       6    7    7    2
         4     8       5    7    6    3
 15      1     2       2    3    4    5
         2     3       2    3    3    5
         3     4       2    2    3    3
         4     9       1    2    3    2
 16      1     7       9    6    7    7
         2     7       9    6    6    8
         3     8       8    5    6    7
         4     9       8    5    5    6
 17      1     1       7    6    7    9
         2     4       6    4    5    8
         3     6       6    3    3    6
         4    10       4    2    3    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   13   81   85
************************************************************************
