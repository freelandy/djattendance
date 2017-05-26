************************************************************************
file with basedata            : md117_.bas
initial value random generator: 30418670
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  94
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       17       11       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7   9  12
   3        3          3           5   9  10
   4        3          2           6   9
   5        3          3           7   8  11
   6        3          3           7  10  11
   7        3          1          13
   8        3          2          12  13
   9        3          1          11
  10        3          2          12  13
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       6    7    7    8
         2     8       6    5    5    5
         3     8       2    7    3    6
  3      1     3       3    6    5    9
         2     7       3    4    4    6
         3     7       3    3    5    7
  4      1     4      10    9    8    6
         2     6      10    8    7    4
         3     7       9    6    3    3
  5      1     1       7   10    7    8
         2     6       4    5    7    7
         3    10       2    5    7    7
  6      1     5       6    9    5    8
         2     6       5    7    4    7
         3     7       5    2    1    4
  7      1     2       7    9    2    7
         2     2       8    9    3    6
         3     3       4    8    2    5
  8      1     1       7    8    6    8
         2     4       6    7    5    8
         3     7       4    7    3    8
  9      1     7       4   10    8   10
         2     9       3    4    8    7
         3    10       1    4    6    5
 10      1     4       5    9    3    4
         2     5       5    9    3    3
         3    10       5    8    3    3
 11      1     6       6    6    9    7
         2     6       6    4    9    8
         3     9       6    2    6    5
 12      1     2       7    4    9    7
         2     5       6    3    6    7
         3     6       5    2    5    7
 13      1     1      10   10    7   10
         2     5       9    7    6    9
         3    10       9    4    3    8
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   13   13   69   86
************************************************************************
