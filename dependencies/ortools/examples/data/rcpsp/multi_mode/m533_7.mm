************************************************************************
file with basedata            : cm533_.bas#
initial value random generator: 1692190303
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  148
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17        1       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          1          16
   3        5          3           5   7   9
   4        5          3           6   8  13
   5        5          2           8  11
   6        5          2           7   9
   7        5          3          10  14  17
   8        5          2          12  14
   9        5          2          10  11
  10        5          1          15
  11        5          2          12  14
  12        5          2          16  17
  13        5          2          15  17
  14        5          2          15  16
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       3    0    8   10
         2     8       0    7    6    9
         3     8       2    0    7   10
         4     9       0    7    4    9
         5    10       0    7    2    9
  3      1     1       0    5    6    7
         2     2       0    4    6    6
         3     5       0    3    5    5
         4     6       2    0    5    5
         5     7       0    2    4    4
  4      1     2       9    0    8    5
         2     3       6    0    7    5
         3     7       5    0    6    4
         4     8       0    4    6    4
         5    10       4    0    5    4
  5      1     4       0    3    9    9
         2     5       7    0    9    7
         3     8       0    2    9    7
         4     9       7    0    9    6
         5    10       6    0    9    3
  6      1     4       0    8    7    7
         2     6       0    6    7    7
         3     8       7    0    6    7
         4     9       0    5    5    6
         5     9       0    6    4    6
  7      1     5       0    5    2    7
         2     6       0    4    2    7
         3     7       0    3    2    6
         4     8       0    1    1    6
         5    10       5    0    1    5
  8      1     1       9    0    7    8
         2     3       8    0    7    8
         3     5       8    0    6    7
         4     7       0    6    6    7
         5    10       0    5    5    7
  9      1     2       6    0    5   10
         2     4       6    0    5    9
         3     5       6    0    5    7
         4     8       4    0    4    6
         5    10       0    9    4    6
 10      1     1       8    0    7    6
         2     6       0    4    7    5
         3     8       8    0    5    3
         4     8       7    0    6    3
         5    10       4    0    3    3
 11      1     2       6    0    7    8
         2     3       0    6    7    7
         3     4       6    0    6    6
         4     4       0    5    7    5
         5     5       5    0    6    4
 12      1     4       0   10    8   10
         2     5       5    0    8    9
         3     9       0    7    8    8
         4     9       4    0    7    8
         5    10       1    0    7    8
 13      1     1       9    0    9    9
         2     2       8    0    8    9
         3     3       6    0    6    8
         4     6       0    6    5    8
         5     7       4    0    2    8
 14      1     2       8    0    4    9
         2     3       0    7    3    9
         3     4       0    6    3    9
         4     8       5    0    3    8
         5    10       5    0    2    7
 15      1     1       0    4    9    7
         2     1       9    0    9    9
         3     5       0    4    6    6
         4     5       7    0    6    6
         5    10       0    4    4    5
 16      1     2       0   10    5    5
         2     4       0    9    4    5
         3     6       0    9    4    4
         4     8       0    9    3    4
         5    10       0    8    3    2
 17      1     3       0    9    7    7
         2     4       8    0    6    4
         3     6       0    8    6    4
         4     6       6    0    6    3
         5    10       0    8    5    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    6   13   77   95
************************************************************************
