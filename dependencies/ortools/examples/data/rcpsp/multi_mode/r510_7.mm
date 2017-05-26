************************************************************************
file with basedata            : cr510_.bas
initial value random generator: 657700079
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  140
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       22        1       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   7  10
   3        3          3           9  15  17
   4        3          3           5  10  12
   5        3          3           6   7  11
   6        3          1           8
   7        3          3          14  15  17
   8        3          3           9  13  15
   9        3          1          16
  10        3          2          11  13
  11        3          1          14
  12        3          1          16
  13        3          2          14  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     6       0    7    5    6    7    0    5
         2     8       0    6    3    0    0   10    0
         3    10       0    4    0    0    3    6    0
  3      1     8       5   10    0    0    4    0    2
         2     9       4    0    6    4    2    2    0
         3    10       0   10    3    0    0    0    1
  4      1     1       0    6    4    4    0    8    0
         2     7       0    6    0    0    0    0    5
         3    10       0    0    4    0    0    8    0
  5      1     2       3    2    2    4    0    8    0
         2     4       2    0    2    0    0    8    0
         3     9       0    0    2    0    9    7    0
  6      1     1      10    0    2    1    0    4    0
         2     7       0    0    2    0    9    3    0
         3     8       8    0    2    0    0    2    0
  7      1     2       8    0    6    0    0    0    8
         2     4       0    0    4    7    0    7    0
         3     9       0    0    0    6    0    0    6
  8      1     5       7    5    0    0    3    0    8
         2     7       5    0    0    0    2    0    4
         3    10       4    0    0    7    2    0    4
  9      1     1       0    0    0    6    0    0    9
         2     4       0    8    0    0    8    8    0
         3     5       3    0    0    5    7    7    0
 10      1     6       4   10    6    0    3    9    0
         2     6       0    9    8    8    6    9    0
         3     9       0    8    0    4    0    0    7
 11      1     1       7    0    3    0    7    0    2
         2     2       6    0    3    0    6    6    0
         3    10       0    0    0    4    5    3    0
 12      1     4       3    0    0    8    0    9    0
         2     7       0    5    9    0    7    9    0
         3    10       0    0    0    4    7    9    0
 13      1     6       0    9    0    6    9    0    9
         2     6       0    0    8    0    9   10    0
         3     9       0    9    5    0    6    0    8
 14      1     3       4    0    0    0    0    0    8
         2     6       0    9   10    0    0    0    7
         3     9       2    0    9    6    7    7    0
 15      1     1       3    0    0    8    0    0   10
         2     3       3    0    0    7    0    0    7
         3     8       0    0    5    0    7    0    3
 16      1     1       0    7    7    9    7    5    0
         2     7       6    4    3    0    0    2    0
         3     8       6    3    0    6    7    2    0
 17      1     1       0    0    5    0    2    0    8
         2     2       7    0    5    5    0    7    0
         3     6       7    0    3    5    0    0    3
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
   16   19   17   13   17   60   44
************************************************************************
