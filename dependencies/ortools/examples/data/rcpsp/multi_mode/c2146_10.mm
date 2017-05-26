************************************************************************
file with basedata            : c2146_.bas
initial value random generator: 870550080
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  123
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17       10       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   9  14
   3        3          3           7  10  14
   4        3          3           5   7   9
   5        3          2          11  14
   6        3          3           8  10  11
   7        3          3           8  11  15
   8        3          2          12  13
   9        3          2          10  13
  10        3          3          12  15  16
  11        3          3          12  13  16
  12        3          1          17
  13        3          1          17
  14        3          3          15  16  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       9   10    8    7
         2     5       9   10    7    3
         3     6       8   10    5    2
  3      1     3       6    8    4    6
         2     6       6    2    3    4
         3     6       4    2    2    5
  4      1     1       5    5    5    6
         2     7       2    4    4    4
         3     7       2    4    5    3
  5      1     3      10    4    5    9
         2     5      10    3    5    7
         3     7       9    3    4    3
  6      1     3       7    4    5    8
         2     5       5    3    5    7
         3    10       4    3    5    5
  7      1     1       5    8    4    4
         2     4       5    8    3    4
         3    10       4    5    2    4
  8      1     3       5    8    6    2
         2     5       4    7    5    1
         3     7       3    7    5    1
  9      1     1       8    8    7    9
         2     9       6    7    4    8
         3     9       4    8    6    7
 10      1     1       7    9    7    4
         2     3       5    7    5    4
         3     7       5    4    3    1
 11      1     3       8    8   10   10
         2     4       7    7   10    7
         3     5       6    3    9    7
 12      1     2       4    8    6    6
         2     4       4    8    6    5
         3     6       3    5    3    5
 13      1     3      10    6    6    4
         2     3       9    7    8    5
         3     9       2    5    5    2
 14      1     1       9    7    4    3
         2     7       8    5    4    3
         3     8       7    3    3    3
 15      1     2       6    7    7    8
         2     4       5    5    7    6
         3    10       4    5    6    4
 16      1     5       8    6    8    7
         2     6       6    4    8    6
         3     7       4    3    8    6
 17      1     4       8    6    3    8
         2     7       6    6    3    6
         3     9       5    5    2    2
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   17   18   84   81
************************************************************************
