************************************************************************
file with basedata            : me37_.bas
initial value random generator: 2060742134
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  20
horizon                       :  157
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     18      0       27        2       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           9  16
   3        3          2           5  12
   4        3          3           5   6   7
   5        3          2           8  13
   6        3          3           9  10  13
   7        3          3          10  13  17
   8        3          2          11  15
   9        3          3          12  18  19
  10        3          1          15
  11        3          3          14  18  19
  12        3          1          17
  13        3          1          15
  14        3          1          16
  15        3          2          18  19
  16        3          1          17
  17        3          1          20
  18        3          1          20
  19        3          1          20
  20        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     1      10    8
         2     4       9    7
         3    10       9    4
  3      1     1       7    6
         2     7       7    4
         3     9       6    3
  4      1     7       9    1
         2     8       6    1
         3    10       4    1
  5      1     2       8    8
         2     9       5    7
         3    10       1    6
  6      1     6       6    4
         2     7       4    3
         3     7       3    4
  7      1     4       9    7
         2     9       8    7
         3    10       5    6
  8      1     3       4    4
         2     3       3    6
         3     9       2    4
  9      1     5       9    7
         2     7       8    5
         3    10       7    2
 10      1     3      10    8
         2     6       9    7
         3    10       7    5
 11      1     1       4    6
         2     1       5    5
         3     6       1    3
 12      1     2       7    8
         2     4       5    6
         3     9       3    3
 13      1     8       9    6
         2     9       6    5
         3     9       8    3
 14      1     1      10    9
         2     6       7    7
         3     6       8    6
 15      1     1       7    5
         2     6       7    4
         3     8       6    3
 16      1     5       4    6
         2    10       4    1
         3    10       3    2
 17      1     5       5    8
         2     7       4    6
         3    10       1    3
 18      1     5       5    6
         2     5       4    8
         3     9       3    4
 19      1     2       8    4
         2     5       8    3
         3     5       6    4
 20      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   16   12
************************************************************************
