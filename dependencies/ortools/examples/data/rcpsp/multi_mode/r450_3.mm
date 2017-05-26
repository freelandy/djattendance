************************************************************************
file with basedata            : cr450_.bas
initial value random generator: 1181945431
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  124
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       26        3       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   9  15
   3        3          3           5   6   7
   4        3          3           5   6   7
   5        3          2           8  11
   6        3          3           8  15  17
   7        3          2           9  10
   8        3          1          16
   9        3          2          11  16
  10        3          3          12  13  16
  11        3          1          12
  12        3          1          14
  13        3          2          14  15
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     2       0    0    6    0    7    8
         2     4       6    2    0    0    6    7
         3     8       5    0    0    0    4    6
  3      1     1       7    9    3    0    9    9
         2     2       0    9    0    0    9    5
         3     8       2    8    2    0    9    4
  4      1     1       5    0    0    0    7    8
         2     1       5    5    0    0    6    7
         3     4       4    0    0    5    5    5
  5      1     1       4    5    0    9    6    7
         2     3       0    5    6    7    6    7
         3     6       0    2    0    4    5    6
  6      1     2       0    0    9    8    9    7
         2     2       6    0    0    0    9    7
         3     8       2    9    9    0    9    5
  7      1     2      10    3    4    0    6    7
         2     4       0    3    0    0    6    7
         3     8       0    2    2    0    5    4
  8      1     2       7    6    9    0    7    9
         2     6       0    6    0    4    7    9
         3     8       6    5    0    0    7    8
  9      1     8       5    0    0    4    8    6
         2     9       2    0    5    3    6    3
         3     9       2    0    6    2    7    5
 10      1     2       8    0    0    9    7   10
         2     6       0    0    0    8    7    8
         3     7       3    5    9    7    6    6
 11      1     1       7    0    9    0    9    8
         2     3       0    9    0    0    7    7
         3     7       0    9    0    7    7    2
 12      1     3       4   10    0    0    4    2
         2     4       0    0    5    7    2    1
         3    10       2    0    0    6    1    1
 13      1     5       0    0    8    0    3    8
         2     9       0    0    8    0    2    7
         3     9       0    4    0    0    3    6
 14      1     6       8    8    9    0    5    3
         2     8       3    8    0    5    5    3
         3    10       0    8    6    4    3    2
 15      1     2       9    8    0    0    4    5
         2     3       0    0    0    8    4    5
         3     3       0    0    6    0    3    4
 16      1     2       0    3    5    0    5    6
         2     4       0    0    5    9    5    3
         3     9       6    0    0    5    5    3
 17      1     5       0    0    0    3    7    8
         2     6       0    8    0    3    4    5
         3    10       0    8    8    0    2    3
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   13   14   12   16   97  100
************************************************************************
