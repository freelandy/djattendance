************************************************************************
file with basedata            : cn325_.bas
initial value random generator: 875365762
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  131
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  3   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20       10       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   7
   3        3          3           6  10  17
   4        3          3           8   9  10
   5        3          3          11  12  14
   6        3          2          15  16
   7        3          1          11
   8        3          3          11  12  14
   9        3          2          13  16
  10        3          1          15
  11        3          2          13  15
  12        3          1          13
  13        3          1          17
  14        3          2          16  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2  N 3
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     1       7    0    0    4    9
         2     2       6    0    0    3    0
         3    10       6    0    6    0    0
  3      1     4       0    8   10   10    0
         2     4       2    0    0    9    5
         3     9       0    6   10    0    5
  4      1     1       0    8    0    3    9
         2     4       6    0    0    0    8
         3     7       0    7    0    0    8
  5      1     2       7    0    6    6    0
         2     2       0    6    7    0    0
         3     7       7    0    4    0    0
  6      1     3       0    8    0    7    0
         2     9       3    0    0    3    8
         3    10       0    7    0    0    8
  7      1     1       5    0    2    0    0
         2     1       0    7    0    0    4
         3     8       4    0    2    0    0
  8      1     3       0   10    5    6    0
         2     8       0    9    5    0    9
         3     9       6    0    0    2    0
  9      1     1       0    6    5    8    9
         2     5       0    5    1    0    5
         3     5       7    0    3    7    4
 10      1     4       2    0    7    0    0
         2     9       0    4    0    0    4
         3    10       2    0    4    9    0
 11      1     4       8    0    3    0    8
         2     6       0    1    2    0    6
         3     7       7    0    0    5    0
 12      1     7       0    7    4    0    1
         2     8       7    0    0    9    0
         3     9       0    5    0    9    0
 13      1     4       9    0    7    0    5
         2     6       1    0    0    2    0
         3     8       0    7    3    0    3
 14      1     3       0    6   10    0    0
         2     4       0    6    6    0    0
         3     8       7    0    0    0    5
 15      1     3       0    5    0    9    0
         2     6       0    5    5    8    0
         3     8       0    4    2    0    8
 16      1     3       0    3    4    0    0
         2     3       6    0    0    3    6
         3     7       3    0    3    0    5
 17      1     5       0    5    0    0    8
         2     7       0    5    0    8    6
         3     9       2    0    0    5    0
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2  N 3
   10   12   75   89   98
************************************************************************
