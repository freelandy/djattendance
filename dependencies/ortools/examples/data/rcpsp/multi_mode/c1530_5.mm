************************************************************************
file with basedata            : c1530_.bas
initial value random generator: 1386303533
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  128
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       14       11       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  11  13
   3        3          1           6
   4        3          3           5   7  12
   5        3          2           9  14
   6        3          2          10  17
   7        3          2          15  16
   8        3          2          12  15
   9        3          1          11
  10        3          1          12
  11        3          1          17
  12        3          1          14
  13        3          1          17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       6    5    3    0
         2     5       6    4    2    0
         3    10       4    3    1    0
  3      1     2      10    9    3    0
         2     7       8    5    0    9
         3    10       7    2    2    0
  4      1     4       5    5   10    0
         2     5       3    3    9    0
         3     8       2    3    8    0
  5      1     1       4    9    8    0
         2     4       4    6    6    0
         3     6       4    6    0    8
  6      1     1       9    3    0   10
         2     9       9    2    0    2
         3     9       8    2    6    0
  7      1     2       3    9    0    9
         2     4       3    9    0    8
         3     8       1    9    0    8
  8      1     1       4    7   10    0
         2     3       3    7    0    9
         3     4       3    6   10    0
  9      1     1       9    9    0    8
         2     4       7    9    0    8
         3     8       2    9    7    0
 10      1     2       8    9    0    5
         2     9       5    9    0    5
         3    10       3    8    5    0
 11      1     4       6    7    0    3
         2     7       5    5    0    2
         3    10       5    3    0    2
 12      1     1       3    8    0    4
         2     5       3    5    4    0
         3     5       3    7    1    0
 13      1     5       7    6    6    0
         2     7       5    5    0    5
         3    10       3    5    6    0
 14      1     3      10    6    4    0
         2     5       8    5    0   10
         3    10       8    4    0    5
 15      1     1      10    6    0    6
         2     3       6    4    6    0
         3     5       5    2    4    0
 16      1     5       8    5    6    0
         2     7       8    4    0    4
         3     7       7    2    4    0
 17      1     2       7    9    0    7
         2     6       6    4    0    7
         3     8       6    3    0    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   21   25   78   97
************************************************************************
