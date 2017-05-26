************************************************************************
file with basedata            : cr344_.bas
initial value random generator: 311529038
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  118
RESOURCES
  - renewable                 :  3   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        2       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1           8
   3        3          1          13
   4        3          3           5   6  10
   5        3          3           8  11  12
   6        3          2           7   8
   7        3          3           9  11  12
   8        3          1          15
   9        3          2          13  14
  10        3          3          13  14  16
  11        3          3          15  16  17
  12        3          2          14  16
  13        3          1          17
  14        3          2          15  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     2       4    0    7    5    6
         2     7       0    8    5    4    4
         3     9       0    6    0    4    3
  3      1     4       7    9    0    7    6
         2     8       7    9    0    7    5
         3     9       6    0    4    2    4
  4      1     6       0    0    1    5    5
         2     7       0    3    0    5    4
         3    10       1    0    0    4    4
  5      1     1       0    6    3    2    3
         2     5       0    0    2    2    2
         3    10       2    5    1    2    2
  6      1     2       9    8    0    7    9
         2     2      10    0    8    7    7
         3     4       7    8    0    6    5
  7      1     3       5    0    2    7    2
         2     4       0    4    0    5    2
         3     5       0    4    0    2    1
  8      1     1       0    0    2   10    3
         2     3       6    0    0   10    2
         3     7       0    8    0   10    2
  9      1     1       0    7    0    8    5
         2     5       0    1    0    7    4
         3     8       8    0    1    3    4
 10      1     4       6    0    0    9    3
         2     5       0    6    4    8    2
         3     7       0    0    2    8    1
 11      1     2       3    0    9    8    8
         2     6       0    7    7    8    6
         3     9       0    5    0    4    5
 12      1     4       0    8    0    5    8
         2     6       7    7    0    5    6
         3     7       0    6    4    4    5
 13      1     2       5    0    5    8    9
         2     5       0    3    5    7    9
         3     6       0    3    0    5    8
 14      1     4       0    0    7    6   10
         2     5       8    4    0    4    7
         3    10       6    1    0    3    6
 15      1     1       0    4    0    9    1
         2     6       0    0    3    8    1
         3     7      10    0    0    6    1
 16      1     1       5    0    9    5   10
         2     3       0    0    6    5    9
         3     5       0    0    3    4    7
 17      1     1       0    6    0    9    9
         2     5       7    5    0    7    8
         3     5       0    4    5    7    7
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  N 1  N 2
   24   30   19   92   81
************************************************************************
