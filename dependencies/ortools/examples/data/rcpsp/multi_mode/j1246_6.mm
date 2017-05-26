************************************************************************
file with basedata            : md110_.bas
initial value random generator: 1234465888
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  89
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       19        0       19
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           5  12
   3        3          3           5   7   8
   4        3          3           7   8  10
   5        3          3           6  10  11
   6        3          1           9
   7        3          3          11  12  13
   8        3          3           9  11  12
   9        3          1          13
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
  2      1     6       9    4    7    7
         2     8       9    4    5    6
         3     9       8    3    3    5
  3      1     2       9    2    8   10
         2     9       6    2    6    8
         3    10       2    1    4    4
  4      1     3       9    5    8    8
         2     4       7    5    6    7
         3     6       3    4    2    6
  5      1     1      10   10    6    8
         2     2      10    9    5    6
         3     3       9    8    5    5
  6      1     4       7    6    5    6
         2     7       7    3    3    6
         3     9       4    3    3    5
  7      1     5       7    7    5   10
         2     5       7    6    7   10
         3     9       1    5    2   10
  8      1     1       8   10    9    5
         2     9       6   10    7    4
         3     9       7    9    9    5
  9      1     3       9    7    8    7
         2     5       9    7    7    6
         3     5       8    6    8    6
 10      1     3       4    8    3   10
         2     6       4    1    2   10
         3     6       3    3    3   10
 11      1     1       5    8    7   10
         2     9       4    7    7    8
         3    10       3    4    4    3
 12      1     1       6    7    9    8
         2     3       5    4    8    5
         3     5       2    4    8    2
 13      1     5       6    8    9    9
         2     6       5    7    6    9
         3     8       4    7    2    9
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   18   19   68   84
************************************************************************
