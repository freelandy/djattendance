************************************************************************
file with basedata            : md352_.bas
initial value random generator: 328262882
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  151
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       20       14       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  12  20
   3        3          1          11
   4        3          2           5   6
   5        3          3          13  15  21
   6        3          3           7  13  14
   7        3          2          18  20
   8        3          3           9  10  11
   9        3          3          13  16  17
  10        3          1          14
  11        3          2          16  17
  12        3          2          15  16
  13        3          1          19
  14        3          3          15  17  21
  15        3          1          19
  16        3          2          18  21
  17        3          1          18
  18        3          1          19
  19        3          1          22
  20        3          1          22
  21        3          1          22
  22        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       9    8    3    0
         2     9       6    8    0    3
         3    10       4    7    0    2
  3      1     3       6    8    5    0
         2     4       5    5    0    3
         3     7       5    5    4    0
  4      1     1       4    4    4    0
         2     1       4    5    0    6
         3     8       4    3    0    6
  5      1     2      10   10    9    0
         2     6       9    8    8    0
         3     9       9    5    7    0
  6      1     2       5    5    0    6
         2     2       5    5    5    0
         3     3       1    4    4    0
  7      1     2       4    8    4    0
         2     4       4    7    0    4
         3     8       4    7    0    3
  8      1     1       9    3    0    9
         2     1      10    3    0    5
         3     2       8    3    2    0
  9      1     1       6    8    3    0
         2     1       6    9    0    7
         3     6       1    5    0    7
 10      1     6      10    6   10    0
         2     7       7    5    0    1
         3    10       5    5   10    0
 11      1     1       6    7    5    0
         2     5       6    6    4    0
         3     6       4    3    3    0
 12      1     7       4    6    0    7
         2     8       4    6    4    0
         3     8       4    3    7    0
 13      1     1       8    5    0    6
         2     7       7    4    5    0
         3     9       6    3    0    4
 14      1     3       7    7    4    0
         2     5       7    6    4    0
         3     7       3    3    3    0
 15      1     4       9    4    0    8
         2     5       8    3    0    8
         3     8       7    3    0    7
 16      1     2       6    8    8    0
         2     3       5    8    0    6
         3     8       3    7    5    0
 17      1     2       6    5    0    6
         2     6       6    4    7    0
         3    10       3    3    0    2
 18      1     2       7    3    4    0
         2     4       5    3    0    7
         3     7       3    2    0    6
 19      1     1       9    6    0    2
         2     6       6    6    9    0
         3     9       6    5    9    0
 20      1     3       6    5    0    8
         2     5       5    5    0    8
         3     8       4    4    0    6
 21      1     3       5    9    6    0
         2     8       2    4    6    0
         3     8       2    7    0    1
 22      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   32   33  100   90
************************************************************************
