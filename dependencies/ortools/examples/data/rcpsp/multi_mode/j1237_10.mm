************************************************************************
file with basedata            : md101_.bas
initial value random generator: 1341348622
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  99
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       17        8       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   9
   3        3          3           8   9  10
   4        3          2           7   8
   5        3          3           7   8  10
   6        3          2           7  10
   7        3          1          11
   8        3          2          12  13
   9        3          3          11  12  13
  10        3          1          11
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       2    6    5    7
         2     9       2    6    5    4
         3    10       2    5    2    4
  3      1     9       5    5    9   10
         2    10       4    2    8    9
         3    10       2    3    6   10
  4      1     5       9    4    3    7
         2     5       8    5    3    3
         3     5      10    4    1    6
  5      1     2      10    6    5    6
         2     4       9    5    4    6
         3     6       9    5    4    4
  6      1     1       6    7    7    8
         2     6       5    7    5    8
         3     8       5    2    5    6
  7      1     1       4    9    4    8
         2     7       3    9    3    6
         3    10       2    8    1    6
  8      1     1       8   10    9    1
         2     3       8    9    7    1
         3     4       8    9    5    1
  9      1     3       8    8    4    7
         2    10       8    7    3    5
         3    10       8    6    4    5
 10      1     5       5    9    6   10
         2     6       4    9    5    8
         3     8       3    8    3    4
 11      1     2       1    5    7    3
         2     5       1    3    6    3
         3    10       1    3    5    3
 12      1     2       8    3    8    3
         2     6       7    3    8    2
         3     8       5    2    8    2
 13      1     5       9    6    7    5
         2     7       8    4    7    4
         3    10       7    4    6    4
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   12   14   55   57
************************************************************************
