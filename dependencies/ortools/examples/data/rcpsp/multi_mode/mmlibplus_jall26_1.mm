jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 7 8 9 
2	3	5		19 18 16 12 10 
3	3	5		19 18 16 14 10 
4	3	4		19 16 12 10 
5	3	5		19 16 14 13 11 
6	3	5		22 19 18 17 15 
7	3	4		19 17 15 14 
8	3	4		19 17 15 14 
9	3	3		20 14 13 
10	3	1		11 
11	3	4		26 22 17 15 
12	3	2		17 14 
13	3	2		26 17 
14	3	4		26 24 22 21 
15	3	3		28 24 20 
16	3	4		28 26 24 23 
17	3	3		28 24 21 
18	3	3		26 24 21 
19	3	2		28 23 
20	3	1		21 
21	3	2		31 23 
22	3	5		34 32 31 30 29 
23	3	3		30 29 27 
24	3	2		33 25 
25	3	6		37 36 35 34 32 31 
26	3	5		36 35 32 31 30 
27	3	6		41 38 37 36 34 32 
28	3	5		40 37 36 35 31 
29	3	5		43 40 37 36 35 
30	3	4		45 44 43 33 
31	3	6		45 43 42 41 39 38 
32	3	6		51 45 43 42 40 39 
33	3	5		50 42 40 39 38 
34	3	5		50 47 45 44 39 
35	3	3		50 42 38 
36	3	3		51 45 44 
37	3	3		50 42 39 
38	3	4		51 49 47 46 
39	3	2		49 46 
40	3	2		49 46 
41	3	2		51 46 
42	3	2		49 48 
43	3	2		50 49 
44	3	2		49 48 
45	3	1		46 
46	3	1		48 
47	3	1		48 
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
2	1	4	6	8	6	7	
	2	7	5	5	5	7	
	3	8	4	2	4	6	
3	1	1	5	2	6	6	
	2	2	4	2	6	6	
	3	10	4	2	3	6	
4	1	3	5	10	6	4	
	2	6	4	8	6	3	
	3	8	4	6	6	2	
5	1	1	8	2	7	2	
	2	2	7	2	5	3	
	3	3	7	2	5	2	
6	1	1	5	5	7	9	
	2	4	4	3	6	7	
	3	8	4	3	5	3	
7	1	6	7	8	7	7	
	2	9	5	6	7	5	
	3	10	1	5	6	4	
8	1	1	5	6	7	10	
	2	4	5	5	5	6	
	3	5	3	2	5	5	
9	1	4	7	8	2	4	
	2	7	4	8	2	3	
	3	9	2	6	2	2	
10	1	3	6	7	8	6	
	2	4	6	5	8	5	
	3	9	6	5	8	2	
11	1	4	6	2	2	9	
	2	5	6	2	2	6	
	3	7	6	2	2	3	
12	1	1	6	8	3	6	
	2	9	6	5	2	5	
	3	10	4	3	2	2	
13	1	5	3	8	7	5	
	2	8	2	3	7	4	
	3	10	1	1	5	3	
14	1	3	8	7	6	7	
	2	5	5	4	5	6	
	3	9	5	1	5	5	
15	1	7	6	9	8	9	
	2	9	5	7	5	5	
	3	10	2	5	5	1	
16	1	2	6	6	9	4	
	2	6	5	5	8	3	
	3	7	5	4	8	2	
17	1	1	4	8	7	7	
	2	3	3	5	4	7	
	3	8	3	4	3	7	
18	1	1	4	8	9	8	
	2	2	3	7	8	5	
	3	5	3	7	8	1	
19	1	2	6	5	8	5	
	2	6	4	5	5	4	
	3	10	3	5	4	4	
20	1	1	7	5	4	9	
	2	6	7	3	2	8	
	3	7	6	3	2	8	
21	1	2	8	6	5	4	
	2	3	7	6	4	3	
	3	7	6	6	2	2	
22	1	4	3	4	6	3	
	2	5	3	3	4	2	
	3	7	3	2	1	1	
23	1	2	5	3	9	5	
	2	3	4	2	5	2	
	3	6	3	2	4	1	
24	1	2	5	7	7	7	
	2	3	4	5	6	6	
	3	6	4	5	6	5	
25	1	2	6	7	5	5	
	2	6	5	6	3	3	
	3	10	5	6	1	3	
26	1	2	10	3	7	5	
	2	6	8	3	5	4	
	3	8	6	3	3	4	
27	1	1	4	6	9	7	
	2	3	3	4	8	3	
	3	5	3	3	8	1	
28	1	5	1	8	3	7	
	2	7	1	7	3	5	
	3	8	1	6	3	5	
29	1	1	5	3	5	9	
	2	2	4	3	3	9	
	3	7	2	3	2	9	
30	1	7	5	7	9	9	
	2	8	5	6	7	8	
	3	9	5	6	4	8	
31	1	2	8	7	8	5	
	2	5	5	5	8	4	
	3	10	5	4	8	4	
32	1	6	3	8	8	2	
	2	7	3	8	6	1	
	3	8	2	8	6	1	
33	1	1	7	10	6	5	
	2	5	6	7	6	4	
	3	6	6	6	2	3	
34	1	2	7	6	10	8	
	2	5	5	4	9	7	
	3	8	2	1	8	6	
35	1	1	4	8	4	8	
	2	6	4	8	3	8	
	3	10	4	7	2	7	
36	1	6	10	9	6	4	
	2	7	7	8	4	2	
	3	8	6	8	3	2	
37	1	5	8	6	4	9	
	2	6	7	6	3	9	
	3	9	7	4	3	9	
38	1	2	4	5	8	3	
	2	3	3	3	7	3	
	3	9	3	3	7	2	
39	1	6	3	5	8	9	
	2	7	3	4	5	8	
	3	8	3	2	5	8	
40	1	6	8	7	6	9	
	2	9	7	5	6	5	
	3	10	6	3	6	3	
41	1	7	5	4	7	7	
	2	8	4	2	6	7	
	3	9	4	1	6	7	
42	1	2	7	10	10	5	
	2	3	4	8	8	5	
	3	8	1	6	7	3	
43	1	6	10	7	5	9	
	2	7	4	7	3	6	
	3	8	3	5	2	5	
44	1	3	6	10	9	7	
	2	6	6	9	8	5	
	3	8	6	9	6	4	
45	1	4	10	5	3	8	
	2	6	9	3	2	8	
	3	9	9	3	1	7	
46	1	2	9	6	9	5	
	2	3	9	6	8	3	
	3	4	9	4	5	2	
47	1	1	8	6	7	6	
	2	5	7	4	5	4	
	3	10	7	2	5	3	
48	1	1	6	4	3	7	
	2	8	6	2	3	7	
	3	10	4	1	3	5	
49	1	4	7	8	10	6	
	2	5	6	8	8	4	
	3	6	5	8	6	4	
50	1	2	2	3	9	6	
	2	4	2	3	8	6	
	3	7	2	3	8	2	
51	1	2	6	5	7	9	
	2	3	5	5	6	7	
	3	4	4	1	5	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	42	42	278	261

************************************************************************
