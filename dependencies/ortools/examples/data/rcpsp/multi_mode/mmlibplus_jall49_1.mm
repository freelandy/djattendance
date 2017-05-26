jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 4 5 6 8 11 
2	3	3		15 9 3 
3	3	3		20 13 7 
4	3	3		20 15 7 
5	3	2		13 7 
6	3	2		20 7 
7	3	4		27 14 12 10 
8	3	5		24 21 20 16 14 
9	3	2		14 12 
10	3	7		25 24 23 22 21 18 16 
11	3	3		21 17 14 
12	3	5		30 21 18 17 16 
13	3	4		25 19 17 16 
14	3	5		26 25 23 22 18 
15	3	4		25 23 18 16 
16	3	4		33 32 28 26 
17	3	3		34 29 23 
18	3	4		35 34 32 28 
19	3	4		33 32 31 26 
20	3	2		28 26 
21	3	5		35 34 33 32 31 
22	3	3		35 32 28 
23	3	4		35 33 32 31 
24	3	3		34 30 29 
25	3	2		30 28 
26	3	3		39 35 34 
27	3	3		39 34 31 
28	3	1		29 
29	3	2		39 31 
30	3	2		39 31 
31	3	5		43 41 40 37 36 
32	3	5		43 41 40 39 36 
33	3	5		43 41 40 37 36 
34	3	4		43 40 37 36 
35	3	5		47 43 41 40 38 
36	3	2		47 38 
37	3	1		38 
38	3	3		50 46 42 
39	3	4		51 50 49 45 
40	3	3		50 45 44 
41	3	1		42 
42	3	3		51 49 45 
43	3	2		50 44 
44	3	2		49 48 
45	3	1		48 
46	3	1		49 
47	3	1		48 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	1	7	5	7	8	8	6	
	2	4	4	4	6	8	8	6	
	3	9	4	4	5	5	7	4	
3	1	6	9	4	7	7	7	6	
	2	8	9	3	6	7	6	5	
	3	10	9	2	3	7	6	4	
4	1	3	7	7	2	3	8	8	
	2	8	5	6	2	3	8	7	
	3	9	2	6	2	3	8	5	
5	1	1	1	5	7	7	6	7	
	2	2	1	5	6	5	5	6	
	3	3	1	5	6	3	2	5	
6	1	3	6	5	7	5	7	7	
	2	8	5	5	5	3	4	6	
	3	10	5	2	2	3	3	4	
7	1	1	5	6	3	8	1	10	
	2	3	4	2	2	6	1	5	
	3	4	4	2	2	3	1	5	
8	1	2	5	10	10	6	3	9	
	2	3	3	10	10	2	3	7	
	3	5	3	10	10	1	3	5	
9	1	1	7	10	6	7	10	6	
	2	3	6	7	6	7	8	5	
	3	6	6	3	6	3	7	5	
10	1	2	9	7	10	8	6	8	
	2	3	6	7	9	6	5	8	
	3	8	5	7	9	5	1	8	
11	1	2	4	9	7	5	3	8	
	2	4	4	9	5	5	2	6	
	3	10	4	8	1	5	2	5	
12	1	2	6	9	9	6	9	7	
	2	3	5	7	8	6	9	5	
	3	8	5	6	7	6	9	4	
13	1	1	6	8	10	5	8	7	
	2	5	5	7	9	3	7	6	
	3	9	4	5	9	1	5	2	
14	1	3	6	6	8	4	9	10	
	2	5	6	5	7	3	8	8	
	3	6	3	4	4	3	8	7	
15	1	5	6	8	6	7	9	4	
	2	6	6	7	5	7	6	4	
	3	7	2	6	3	7	5	1	
16	1	1	9	4	7	6	7	2	
	2	2	9	4	4	6	6	2	
	3	4	9	3	3	6	1	1	
17	1	5	5	3	6	3	3	8	
	2	6	5	3	5	3	1	7	
	3	9	3	2	5	3	1	4	
18	1	1	5	3	9	5	7	9	
	2	6	3	3	9	3	6	9	
	3	9	2	3	9	2	5	9	
19	1	3	5	5	7	9	7	8	
	2	4	5	5	7	5	7	8	
	3	6	5	5	5	4	5	8	
20	1	2	9	9	4	5	6	8	
	2	3	7	4	4	3	6	7	
	3	7	5	4	4	3	4	6	
21	1	3	6	8	6	9	7	8	
	2	7	5	5	6	9	7	7	
	3	8	3	4	6	9	5	6	
22	1	4	6	7	5	10	8	6	
	2	6	4	6	5	10	5	4	
	3	7	3	5	4	10	2	2	
23	1	1	6	7	8	2	5	7	
	2	2	2	7	4	2	5	4	
	3	5	1	7	2	2	5	3	
24	1	3	9	3	8	7	5	10	
	2	4	6	3	7	5	4	6	
	3	9	5	1	7	5	4	2	
25	1	7	4	9	8	9	7	8	
	2	8	3	6	4	6	6	6	
	3	9	3	6	3	5	4	4	
26	1	3	7	8	5	3	10	10	
	2	6	7	5	4	2	5	9	
	3	8	6	2	4	1	4	8	
27	1	5	8	5	5	2	5	10	
	2	6	7	4	5	2	5	5	
	3	9	4	3	5	2	5	4	
28	1	3	7	9	9	6	4	8	
	2	4	4	8	7	4	4	8	
	3	5	3	6	7	4	1	8	
29	1	3	4	5	5	8	8	9	
	2	4	3	4	5	7	8	7	
	3	5	2	4	2	5	8	7	
30	1	6	4	6	7	8	8	5	
	2	8	4	6	5	8	8	3	
	3	9	3	6	5	8	7	3	
31	1	4	7	7	5	5	8	5	
	2	5	7	6	5	5	6	5	
	3	10	7	6	4	4	4	5	
32	1	2	8	9	4	7	6	10	
	2	3	7	9	3	7	4	7	
	3	4	5	9	2	2	4	7	
33	1	1	8	8	10	7	9	3	
	2	2	8	8	9	7	7	2	
	3	5	8	8	8	6	4	1	
34	1	3	6	3	3	6	9	6	
	2	5	6	2	2	3	7	5	
	3	10	6	2	1	3	7	5	
35	1	3	4	9	8	5	9	6	
	2	5	3	7	8	4	3	6	
	3	8	3	3	8	3	3	6	
36	1	1	4	5	6	5	8	6	
	2	5	4	3	6	5	7	6	
	3	8	4	2	6	5	6	5	
37	1	3	5	9	10	1	6	9	
	2	6	5	8	8	1	6	7	
	3	8	3	8	8	1	3	7	
38	1	2	7	10	7	2	5	9	
	2	5	6	6	6	2	4	7	
	3	6	6	2	3	2	2	3	
39	1	2	3	5	5	7	10	7	
	2	3	3	3	3	5	9	7	
	3	8	2	3	2	4	9	7	
40	1	3	7	3	6	7	4	4	
	2	4	7	2	4	6	3	3	
	3	9	6	1	3	5	2	3	
41	1	1	7	5	6	5	3	4	
	2	6	4	4	5	4	3	3	
	3	10	2	3	5	2	3	1	
42	1	8	4	9	5	2	4	6	
	2	9	3	8	5	1	3	3	
	3	10	2	5	3	1	3	3	
43	1	2	4	5	10	6	6	7	
	2	3	3	5	8	5	6	5	
	3	8	2	3	8	5	4	4	
44	1	1	9	10	6	5	6	6	
	2	4	8	9	6	5	5	6	
	3	7	8	7	6	4	4	4	
45	1	3	8	9	8	7	10	7	
	2	4	7	8	7	4	6	7	
	3	10	3	8	2	3	4	7	
46	1	1	7	10	6	9	6	10	
	2	6	6	7	4	9	2	9	
	3	10	5	4	4	8	2	9	
47	1	6	4	7	3	7	9	4	
	2	9	4	5	2	7	8	4	
	3	10	4	5	2	7	7	3	
48	1	3	10	9	8	8	5	6	
	2	4	5	8	5	6	5	4	
	3	8	3	7	4	1	5	3	
49	1	1	7	4	4	7	5	4	
	2	2	5	3	2	7	4	3	
	3	3	5	2	2	6	3	3	
50	1	2	8	9	9	6	6	4	
	2	5	5	7	8	6	5	2	
	3	7	2	3	8	3	4	2	
51	1	3	4	8	8	7	6	8	
	2	5	3	5	5	7	5	7	
	3	9	3	2	2	7	2	7	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	29	27	257	229	242	263

************************************************************************
