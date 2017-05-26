************************************************************************
file with basedata            : cr346_.bas
initial value random generator: 157431350
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  120
RESOURCES
  - renewable                 :  3   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       22       15       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5  10  17
   3        3          3           7   8  10
   4        3          3           5   6  13
   5        3          3           7   9  11
   6        3          3           7   8  17
   7        3          1          14
   8        3          2          12  16
   9        3          2          15  16
  10        3          1          15
  11        3          2          12  16
  12        3          1          14
  13        3          2          14  17
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     3      10    6    5    8    4
         2     5       7    6    4    5    4
         3     9       2    6    4    3    3
  3      1     1       6    9    8    2    4
         2     3       5    8    7    2    4
         3     7       5    6    7    1    3
  4      1     6       3    5    6    8   10
         2     6       3    4    6    9    6
         3     9       3    3    4    4    4
  5      1     3       5    7    9    9    6
         2     6       4    7    7    5    6
         3     7       4    7    5    4    3
  6      1     5       7    7   10   10    8
         2     9       6    6    7   10    3
         3     9       3    6    7   10    5
  7      1     1       3    2    5    5    2
         2     4       2    2    5    4    2
         3     9       1    2    4    2    2
  8      1     2       7    2    9    5    4
         2     4       7    2    8    4    4
         3     5       7    1    8    3    3
  9      1     4      10    9    5    6    7
         2     9       9    8    2    5    7
         3    10       9    8    1    2    7
 10      1     1       7    9   10    6    7
         2     2       6    7    9    5    6
         3     3       6    7    8    5    6
 11      1     2       8    8    8    9    6
         2     7       8    8    8    8    6
         3     8       7    8    7    7    5
 12      1     3       4    7    5    5    8
         2     7       3    6    4    5    8
         3     8       1    4    3    4    7
 13      1     1      10    7    6    6    3
         2     8       9    6    5    4    3
         3    10       6    6    2    3    3
 14      1     1      10    3    8    9    9
         2     4       9    2    4    8    7
         3     5       7    2    1    5    6
 15      1     5       2    8    7    7    9
         2     7       2    6    5    7    7
         3     9       1    5    4    4    3
 16      1     4       7    6   10    5    5
         2     7       6    4    5    4    4
         3     7       3    6    2    4    3
 17      1     2       4    3    9   10    9
         2     4       2    3    7    7    7
         3     5       2    2    7    6    6
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  N 1  N 2
   17   16   18   89   84
************************************************************************
