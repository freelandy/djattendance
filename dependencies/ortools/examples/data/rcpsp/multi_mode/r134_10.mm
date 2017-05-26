************************************************************************
file with basedata            : cr134_.bas
initial value random generator: 744641322
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  139
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        0       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   8
   3        3          3          14  15  17
   4        3          3           6   7  11
   5        3          3           9  12  17
   6        3          3          12  13  14
   7        3          1           9
   8        3          2           9  10
   9        3          1          14
  10        3          2          11  16
  11        3          2          12  13
  12        3          1          15
  13        3          2          15  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     3       6    6    4
         2     7       4    5    2
         3     7       0    4    3
  3      1     1       9   10    5
         2     9       8    7    4
         3    10       6    3    2
  4      1     3       6    3    4
         2     6       5    3    4
         3     7       0    2    4
  5      1     2       2    4    5
         2     5       0    4    4
         3    10       0    3    4
  6      1     5       0    7    7
         2     6       7    6    5
         3    10       6    3    5
  7      1     1       0    7    5
         2     3      10    6    5
         3     6       0    5    5
  8      1     2       8    8    5
         2     3       3    7    5
         3     9       0    7    4
  9      1     1       6    1    5
         2     3       0    1    4
         3     6       0    1    2
 10      1     1       0    4    6
         2     4       4    3    5
         3     8       0    3    2
 11      1     9       3    5    4
         2     9       0    6    3
         3    10       4    4    2
 12      1     1       9    8    7
         2     2       3    5    5
         3     9       0    2    4
 13      1     1       0    9    8
         2     7      10    7    8
         3    10       0    6    7
 14      1     3       0    7    5
         2     9       0    6    5
         3    10       0    5    5
 15      1     4       0    9    9
         2     7      10    6    9
         3    10       8    5    9
 16      1     1       2    4    9
         2     7       0    3    9
         3     8       1    2    9
 17      1     1       0    3    6
         2     8       0    3    5
         3     9       0    2    5
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   17   67   77
************************************************************************
