************************************************************************
file with basedata            : md384_.bas
initial value random generator: 2077591090
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  162
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       19       18       19
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1           5
   3        3          1          16
   4        3          3          11  13  15
   5        3          3           6   7  11
   6        3          3          10  12  17
   7        3          3           8   9  12
   8        3          3          10  13  17
   9        3          1          21
  10        3          1          14
  11        3          2          14  18
  12        3          3          13  16  20
  13        3          1          18
  14        3          2          16  21
  15        3          3          19  20  21
  16        3          1          19
  17        3          2          18  20
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
  2      1     1       7    6    9    7
         2     3       5    6    9    5
         3     5       3    5    8    4
  3      1     2       6    9    6    4
         2     7       4    5    6    4
         3     8       2    5    3    4
  4      1     1       8    5    6   10
         2     1       8    5    7    9
         3     5       7    4    5    7
  5      1     1       8    9    9    8
         2     2       7    9    8    5
         3     8       6    9    8    5
  6      1     3       3    6    8    4
         2     4       2    3    8    2
         3     4       3    4    7    3
  7      1     3       9    9    7    7
         2     5       6    8    7    6
         3     7       4    6    6    5
  8      1     1       8    2    5    6
         2     2       6    1    3    6
         3     8       5    1    3    6
  9      1     7      10    7    7    8
         2     9       5    5    5    8
         3    10       5    1    4    8
 10      1     2       2    8    7    4
         2     2       3    8    8    3
         3     7       1    8    7    2
 11      1     4       5    6    8    9
         2     8       4    5    8    7
         3     9       4    4    5    6
 12      1     2       6   10    5    9
         2     6       5    7    4    5
         3    10       5    4    3    2
 13      1     4       5    8    8    5
         2     9       5    8    6    5
         3    10       4    4    5    5
 14      1     1       8    4    6    8
         2     1       8    6    8    6
         3     9       8    3    5    3
 15      1     2       5    8    4    3
         2     3       3    5    3    3
         3     9       2    4    1    2
 16      1     4      10    6    9    6
         2    10      10    5    9    6
         3    10      10    6    9    5
 17      1     2       9   10    5    2
         2     6       7    5    4    2
         3    10       6    3    2    1
 18      1     1       5    6    6    3
         2     4       4    5    5    3
         3     5       4    5    4    2
 19      1     4       7    9    4    6
         2     8       7    9    3    6
         3    10       7    6    2    5
 20      1     2       5    8    3    7
         2     4       2    8    3    6
         3     9       2    4    2    3
 21      1     7       7    5    8    9
         2     8       7    2    5    8
         3     9       5    2    4    8
 22      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   30   35  134  125
************************************************************************
