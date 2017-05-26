************************************************************************
file with basedata            : cr545_.bas
initial value random generator: 120691147
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  120
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        0       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6  13
   3        3          2           5  14
   4        3          3           6   7   9
   5        3          3           7   8  17
   6        3          3          10  11  17
   7        3          3          11  12  13
   8        3          2          11  15
   9        3          2          10  13
  10        3          2          12  14
  11        3          1          16
  12        3          1          16
  13        3          2          15  16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     4       3    9    4    3    4   10    7
         2     4       3    9    5    4    5    8    5
         3     8       1    9    3    3    3    4    5
  3      1     7       4    4    4    5    9    9    4
         2     8       2    2    3    4    8    8    2
         3     8       3    2    3    4    8    7    4
  4      1     9       8    4    6    8    5    9    9
         2    10       5    1    4    6    4    8    6
         3    10       4    2    3    6    5    8    5
  5      1     2       6    4   10    7    7    9    9
         2     4       5    2   10    6    4    6    5
         3     4       6    3    9    7    5    7    6
  6      1     6       8    6    2    6    8    7    6
         2     6       9   10    2    6    8    6    8
         3     8       6    2    1    6    7    6    5
  7      1     2       6    6    4    9    9    5    6
         2     6       4    5    3    7    7    4    5
         3     7       4    5    2    7    5    4    5
  8      1     7       4    7    6    7    7    2    9
         2     7       4    7    6    6    6    3    9
         3     9       3    6    6    6    6    2    9
  9      1     2       7    9    4    5    7   10    5
         2     3       4    6    4    5    4    9    5
         3     4       1    4    4    2    4    8    4
 10      1     1       2    6   10    6    4    8    8
         2     3       2    5    7    4    3    6    7
         3     5       2    4    6    1    2    6    7
 11      1     1       8   10    9    3    4    3    9
         2     6       7    6    8    3    4    3    7
         3     9       7    3    8    3    3    2    3
 12      1     2       1    6    9   10    4    3   10
         2     2       1    6    8   10    7    3    9
         3     7       1    6    3    8    1    3    8
 13      1     2       9    2   10   10    8    8    7
         2     7       9    2    8   10    7    5    6
         3     9       8    1    7   10    6    2    4
 14      1     1       9    5   10    9    5    2    7
         2     9       6    4    8    8    3    2    5
         3    10       5    3    5    8    3    2    5
 15      1     2       9    9    6   10    8    5    6
         2     4       6    7    5    8    8    4    5
         3     9       1    7    5    6    7    4    4
 16      1     2       7    9   10    7    8    7    9
         2     6       7    8    8    6    8    6    8
         3     8       6    6    7    5    7    4    7
 17      1     2       7    9    4    9   10    7    9
         2     5       5    4    2    3    9    7    9
         3     5       6    2    3    6    9    6    9
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
   13   15   15   15   15   90  105
************************************************************************
