************************************************************************
file with basedata            : mm18_.bas
initial value random generator: 1742913893
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  12
horizon                       :  72
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     10      0       12        6       12
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1          11
   3        3          2           7  10
   4        3          2           5   8
   5        3          2           6  10
   6        3          2           9  11
   7        3          1           8
   8        3          2           9  11
   9        3          1          12
  10        3          1          12
  11        3          1          12
  12        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       6    0    5    0
         2     2       0    7    4    0
         3     5       0    6    2    0
  3      1     2       0    8    2    0
         2     4       0    4    0    9
         3     8       8    0    0    7
  4      1     1       8    0    0    9
         2     7       7    0    0    7
         3     8       0    8    5    0
  5      1     1       0    3    8    0
         2     5       8    0    8    0
         3     8       4    0    0    4
  6      1     1       0    8    0    6
         2     3       9    0    2    0
         3     3       0    8    3    0
  7      1     3       6    0    0   10
         2     6       6    0    2    0
         3     7       2    0    0    5
  8      1     4       8    0    3    0
         2     6       7    0    0    5
         3    10       6    0    0    4
  9      1     3       0    4    0    2
         2     8      10    0    7    0
         3     9       9    0    0    2
 10      1     5      10    0    0   10
         2     9      10    0    8    0
         3     9       0    7    8    0
 11      1     2       8    0    0    2
         2     3       8    0    0    1
         3     5       8    0    6    0
 12      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   20   16   26   29
************************************************************************
