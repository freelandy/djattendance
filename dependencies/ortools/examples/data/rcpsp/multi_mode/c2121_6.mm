************************************************************************
file with basedata            : c2121_.bas
initial value random generator: 444135307
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  130
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       16       11       16
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   8  12
   3        3          3           6  10  14
   4        3          3           7   8  12
   5        3          3           9  10  17
   6        3          2           7   9
   7        3          3          11  13  17
   8        3          3           9  10  14
   9        3          2          11  13
  10        3          2          11  13
  11        3          2          15  16
  12        3          3          14  15  17
  13        3          2          15  16
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
  2      1     3       5    5    8    0
         2     5       3    3    5    0
         3     8       3    1    0    4
  3      1     2       9    6    7    0
         2     9       9    3    0    8
         3    10       9    2    6    0
  4      1     3       2    6    0    7
         2     8       2    5    0    5
         3    10       1    2    0    2
  5      1     5       8    8    0    7
         2     5       9    8    9    0
         3     7       8    7    2    0
  6      1     3       2    6    0    6
         2     5       2    4    8    0
         3     7       1    2    7    0
  7      1     1       7    8    8    0
         2     1       7    9    0    2
         3    10       6    7    5    0
  8      1     4       3    7    0    8
         2     4       3    8    0    5
         3    10       3    5    5    0
  9      1     4       9    4    8    0
         2     6       8    3    8    0
         3     8       7    3    0    3
 10      1     1       7    8    0    9
         2     3       6    8    5    0
         3     7       6    6    0    9
 11      1     1       6    9    0    4
         2     3       4    7    4    0
         3    10       3    5    4    0
 12      1     2       5    6    0    6
         2     7       4    5    0    6
         3     9       3    5    0    5
 13      1     1       2    9    0    2
         2     2       2    8   10    0
         3    10       2    8    0    2
 14      1     3       6    8    4    0
         2     5       6    6    3    0
         3     6       6    3    2    0
 15      1     3       6    9    0    8
         2     8       5    7    0    4
         3     9       3    3    2    0
 16      1     3       9    5    0    5
         2     4       9    5    0    4
         3     7       8    3   10    0
 17      1     2       4    8    0    8
         2     2       7    6    0   10
         3     2       5    7    0    9
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   13   67   71
************************************************************************
