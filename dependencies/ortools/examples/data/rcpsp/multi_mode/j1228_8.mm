************************************************************************
file with basedata            : md92_.bas
initial value random generator: 1842154866
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  98
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       13        0       13
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   9
   3        3          2           7  10
   4        3          3           5   6   9
   5        3          2           8  12
   6        3          3          10  11  12
   7        3          3           9  12  13
   8        3          2          10  11
   9        3          1          11
  10        3          1          13
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       3    0    0    5
         2     5       0    9    0   10
         3     6       3    0    7    0
  3      1     3       0    4    0    5
         2     7       0    3    4    0
         3     9       0    1    2    0
  4      1     2       0    9    0    9
         2     7       0    7    5    0
         3     7       1    0    0    7
  5      1     1       0    8    9    0
         2     4       4    0    0    4
         3    10       0    4    0    4
  6      1     3       5    0    4    0
         2     7       0    7    3    0
         3     8       0    5    3    0
  7      1     4       5    0    0    9
         2     5       0    7    0    6
         3     6       3    0    6    0
  8      1     4       0    8    0    6
         2     7       0    8    5    0
         3     9       0    6    0    5
  9      1     3       4    0    0    8
         2     4       0    7    0    4
         3     9       3    0    9    0
 10      1     1       0    9    9    0
         2     3       0    9    0    8
         3     9       3    0    9    0
 11      1     3       8    0    7    0
         2     8       6    0    0    6
         3    10       6    0    0    5
 12      1     3       0    3    6    0
         2     5       0    2    0    2
         3     9       9    0    0    1
 13      1     1       0    8    6    0
         2     6       6    0    5    0
         3     6       0    5    6    0
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   20   22   77   67
************************************************************************
