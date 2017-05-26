jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 6 7 
2	3	6		17 12 11 9 8 5 
3	3	5		17 16 12 8 5 
4	3	4		16 15 14 12 
5	3	3		15 14 10 
6	3	3		14 13 10 
7	3	3		17 16 10 
8	3	5		23 20 19 15 13 
9	3	4		22 19 18 14 
10	3	5		28 23 22 20 19 
11	3	3		23 19 15 
12	3	4		24 22 19 18 
13	3	3		24 22 18 
14	3	4		29 23 21 20 
15	3	2		22 18 
16	3	4		29 28 24 21 
17	3	1		18 
18	3	3		29 28 21 
19	3	2		31 21 
20	3	3		31 25 24 
21	3	3		30 27 25 
22	3	3		30 29 26 
23	3	4		37 31 30 26 
24	3	4		35 34 30 26 
25	3	3		37 34 26 
26	3	6		51 41 40 38 33 32 
27	3	6		51 41 40 38 35 32 
28	3	6		51 41 40 35 33 32 
29	3	4		41 37 32 31 
30	3	4		41 40 38 33 
31	3	3		50 40 35 
32	3	4		50 49 39 36 
33	3	4		50 49 39 36 
34	3	4		50 49 41 36 
35	3	3		49 39 36 
36	3	5		48 45 44 43 42 
37	3	3		50 45 39 
38	3	4		49 48 44 42 
39	3	3		48 46 44 
40	3	3		48 47 46 
41	3	1		42 
42	3	2		47 46 
43	3	2		47 46 
44	3	1		47 
45	3	1		46 
46	3	1		52 
47	3	1		52 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	1	9	3	9	5	
	2	5	9	3	4	5	
	3	6	9	2	4	4	
3	1	1	7	3	4	8	
	2	6	4	2	2	6	
	3	7	2	2	1	5	
4	1	4	6	9	4	7	
	2	8	6	8	3	7	
	3	9	6	5	3	6	
5	1	2	10	5	3	7	
	2	3	9	4	3	7	
	3	4	8	4	3	6	
6	1	4	6	6	3	2	
	2	7	5	4	3	2	
	3	10	5	3	3	2	
7	1	3	8	9	7	9	
	2	4	8	6	6	7	
	3	5	4	3	5	3	
8	1	2	8	4	6	7	
	2	8	7	3	5	6	
	3	10	5	3	4	2	
9	1	1	9	5	8	5	
	2	7	5	5	7	5	
	3	9	5	4	5	5	
10	1	5	3	7	7	6	
	2	6	2	7	4	6	
	3	10	1	4	4	6	
11	1	4	8	6	5	7	
	2	5	6	5	5	4	
	3	7	3	5	4	3	
12	1	3	10	3	3	1	
	2	4	7	2	2	1	
	3	5	6	1	2	1	
13	1	1	3	7	8	8	
	2	8	3	5	7	7	
	3	9	3	5	7	4	
14	1	4	6	5	5	4	
	2	5	4	3	4	4	
	3	9	3	3	3	3	
15	1	8	8	7	6	10	
	2	9	6	5	3	7	
	3	10	4	5	2	6	
16	1	3	9	7	9	5	
	2	7	8	5	8	5	
	3	8	8	4	8	5	
17	1	2	2	7	5	8	
	2	7	2	5	5	5	
	3	8	2	5	4	3	
18	1	8	4	4	10	5	
	2	9	2	4	9	5	
	3	10	2	4	9	4	
19	1	6	10	5	4	4	
	2	7	10	4	3	3	
	3	8	10	1	3	3	
20	1	1	5	7	5	8	
	2	5	4	4	4	8	
	3	6	4	3	3	7	
21	1	2	7	10	7	6	
	2	4	5	9	6	3	
	3	7	2	8	4	2	
22	1	4	6	7	6	7	
	2	5	4	7	4	7	
	3	9	1	7	3	7	
23	1	3	8	6	9	4	
	2	6	8	5	7	3	
	3	10	8	3	3	3	
24	1	6	6	8	8	6	
	2	8	6	7	5	5	
	3	10	5	5	1	1	
25	1	1	8	5	10	4	
	2	5	7	3	5	3	
	3	8	5	3	1	2	
26	1	6	6	5	3	9	
	2	8	4	5	2	8	
	3	9	3	5	1	6	
27	1	2	7	5	4	5	
	2	8	7	5	4	3	
	3	9	7	5	4	2	
28	1	2	8	4	7	8	
	2	4	8	2	6	7	
	3	6	8	1	5	7	
29	1	7	7	1	8	8	
	2	9	5	1	8	5	
	3	10	3	1	6	1	
30	1	2	8	7	6	10	
	2	3	6	6	6	7	
	3	5	6	6	6	6	
31	1	3	6	7	10	10	
	2	4	5	6	8	6	
	3	5	3	2	7	6	
32	1	2	9	8	5	7	
	2	5	7	8	5	6	
	3	9	6	8	3	5	
33	1	1	8	10	8	10	
	2	2	8	5	7	8	
	3	10	8	3	5	8	
34	1	4	3	8	9	9	
	2	7	3	6	8	7	
	3	10	3	3	7	4	
35	1	1	8	7	6	8	
	2	2	7	6	4	7	
	3	8	6	5	3	4	
36	1	2	10	7	6	8	
	2	8	7	4	5	7	
	3	9	2	4	5	5	
37	1	2	8	4	5	10	
	2	4	6	3	5	7	
	3	6	4	3	5	5	
38	1	4	7	2	6	9	
	2	5	7	2	3	5	
	3	7	4	2	3	3	
39	1	7	1	4	8	5	
	2	8	1	3	4	4	
	3	10	1	3	4	3	
40	1	2	6	7	5	5	
	2	5	5	7	5	4	
	3	7	2	3	5	3	
41	1	2	3	3	7	9	
	2	5	3	2	5	9	
	3	9	3	1	4	9	
42	1	4	4	9	4	9	
	2	9	4	8	3	9	
	3	10	2	8	3	8	
43	1	1	8	6	9	8	
	2	7	6	4	7	6	
	3	8	6	3	4	3	
44	1	4	9	6	7	5	
	2	5	9	6	6	3	
	3	6	9	4	2	3	
45	1	2	10	3	7	10	
	2	5	8	2	5	8	
	3	7	8	2	5	6	
46	1	3	6	8	8	6	
	2	7	6	7	8	4	
	3	8	5	5	8	4	
47	1	4	6	9	6	8	
	2	6	3	8	4	7	
	3	9	2	8	3	6	
48	1	1	10	5	9	4	
	2	6	9	2	6	3	
	3	9	9	2	4	3	
49	1	1	9	9	6	10	
	2	7	8	9	6	7	
	3	9	7	9	5	7	
50	1	1	5	3	7	2	
	2	2	4	3	5	1	
	3	3	3	1	5	1	
51	1	3	4	4	9	6	
	2	9	4	2	8	4	
	3	10	3	2	6	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	21	18	296	309

************************************************************************
