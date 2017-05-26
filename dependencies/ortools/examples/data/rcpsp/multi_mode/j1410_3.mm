************************************************************************
file with basedata            : md138_.bas
initial value random generator: 1358225637
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  117
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       22        0       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6  10  14
   3        3          3           5   6   8
   4        3          3           6   7   8
   5        3          3           7  10  15
   6        3          3          11  12  15
   7        3          1           9
   8        3          3          10  12  14
   9        3          1          11
  10        3          1          11
  11        3          1          13
  12        3          1          13
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     6       9    0    0    4
         2     6       0    8    9    0
         3    10       0    3    8    0
  3      1     6       9    0    0    4
         2     9       8    0    7    0
         3     9       7    0    0    2
  4      1     6       0    5    0    9
         2     8       4    0    0    8
         3     9       3    0    7    0
  5      1     6       0    3    0    7
         2     7       0    3    9    0
         3     8       0    2    0    6
  6      1     6       7    0    3    0
         2     8       0   10    0    3
         3     9       0    8    1    0
  7      1     2       0    6    0    6
         2     5       0    6    0    2
         3     8       0    6    8    0
  8      1     4       0    3    7    0
         2     6       3    0    4    0
         3    10       0    2    4    0
  9      1     2       0    8    5    0
         2     9       3    0    0    1
         3     9       0    4    5    0
 10      1     4       5    0    0   10
         2     8       0    5    8    0
         3     8       0    5    0    9
 11      1     3       0    2    0    6
         2     7       4    0    0    4
         3     9       0    2    0    1
 12      1     3       0    4    5    0
         2     4       0    3    0    7
         3     5       0    2    5    0
 13      1     3       0    9    8    0
         2     7       0    9    5    0
         3     9      10    0    4    0
 14      1     4       0    8    9    0
         2     5       0    7    0    8
         3     7       8    0    4    0
 15      1     1       0    2    9    0
         2     4       5    0    0   10
         3     7       5    0    0    9
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   15   18   51   38
************************************************************************
