jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 8 10 11 14 18 
2	3	6		22 19 17 15 13 7 
3	3	7		33 22 21 19 17 12 7 
4	3	7		30 23 22 21 20 12 9 
5	3	6		33 21 19 17 13 7 
6	3	4		33 22 21 7 
7	3	7		39 36 30 29 24 23 16 
8	3	7		39 36 29 28 25 21 16 
9	3	6		39 36 29 24 19 16 
10	3	6		51 29 27 24 22 19 
11	3	4		36 24 22 16 
12	3	4		36 28 27 16 
13	3	9		51 39 38 37 35 32 29 28 27 
14	3	8		38 37 35 34 32 29 27 26 
15	3	4		51 33 27 21 
16	3	8		51 38 37 35 34 32 31 26 
17	3	7		38 37 36 35 32 31 28 
18	3	7		41 38 37 36 33 29 28 
19	3	6		41 38 37 34 32 28 
20	3	5		51 49 38 35 28 
21	3	6		50 49 40 38 37 31 
22	3	5		49 45 41 37 28 
23	3	5		49 45 41 37 28 
24	3	5		50 47 38 35 34 
25	3	5		50 40 38 37 31 
26	3	9		50 49 48 46 45 44 43 42 41 
27	3	3		48 40 31 
28	3	7		50 48 47 46 43 42 40 
29	3	7		48 47 46 45 43 42 40 
30	3	7		50 49 48 46 45 42 40 
31	3	6		46 45 44 43 42 41 
32	3	6		49 48 47 46 43 42 
33	3	1		34 
34	3	5		49 46 45 43 42 
35	3	5		48 45 44 43 42 
36	3	4		47 45 44 42 
37	3	2		43 42 
38	3	2		43 42 
39	3	2		44 42 
40	3	1		44 
41	3	1		47 
42	3	1		52 
43	3	1		52 
44	3	1		52 
45	3	1		52 
46	3	1		52 
47	3	1		52 
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
2	1	6	7	3	6	5	5	7	
	2	7	4	2	4	4	5	4	
	3	10	1	2	2	3	4	4	
3	1	3	4	5	9	2	3	7	
	2	5	3	3	9	1	2	5	
	3	8	2	2	8	1	1	2	
4	1	1	9	5	5	6	9	5	
	2	6	4	3	4	6	7	5	
	3	10	4	2	2	6	7	4	
5	1	2	9	7	5	7	7	7	
	2	6	8	7	2	6	6	7	
	3	9	6	1	2	6	6	7	
6	1	1	10	9	10	10	6	9	
	2	4	9	9	9	9	5	6	
	3	9	9	9	8	9	4	4	
7	1	4	6	10	7	8	10	6	
	2	8	3	9	4	7	10	5	
	3	9	1	9	2	5	10	4	
8	1	5	3	10	5	7	5	4	
	2	6	2	9	5	7	5	2	
	3	9	2	8	5	7	1	2	
9	1	3	6	3	8	9	6	6	
	2	4	6	3	7	6	3	5	
	3	9	6	1	7	4	3	2	
10	1	4	6	7	9	5	7	3	
	2	5	6	5	6	3	7	3	
	3	6	6	3	5	2	7	2	
11	1	3	5	8	2	5	7	10	
	2	8	4	7	1	5	5	9	
	3	10	4	7	1	5	5	8	
12	1	5	8	10	7	5	6	7	
	2	7	6	9	6	3	5	7	
	3	10	4	7	5	3	4	3	
13	1	2	3	5	5	3	6	8	
	2	9	2	5	4	3	5	7	
	3	10	1	5	4	1	4	7	
14	1	3	8	3	9	5	5	9	
	2	9	5	1	9	4	3	7	
	3	10	5	1	8	4	3	3	
15	1	4	7	6	9	8	3	9	
	2	6	7	6	6	6	1	6	
	3	7	7	3	5	6	1	5	
16	1	6	6	8	9	5	6	7	
	2	8	4	6	8	4	6	7	
	3	9	4	2	6	4	6	3	
17	1	3	7	7	3	3	6	7	
	2	6	3	7	2	2	5	5	
	3	8	2	5	2	2	5	2	
18	1	1	9	9	5	7	5	6	
	2	6	4	7	4	7	3	5	
	3	7	4	7	4	5	2	4	
19	1	5	2	6	6	9	8	8	
	2	6	1	5	4	7	7	5	
	3	9	1	4	3	5	5	3	
20	1	1	6	9	7	7	4	5	
	2	6	5	8	4	4	3	5	
	3	7	5	7	2	4	3	5	
21	1	3	5	6	7	3	5	9	
	2	8	5	6	5	2	5	6	
	3	9	5	4	4	1	5	2	
22	1	5	4	9	7	8	7	5	
	2	8	3	9	6	6	3	4	
	3	9	2	9	5	6	2	4	
23	1	4	8	2	9	6	6	3	
	2	6	7	2	8	4	5	1	
	3	9	6	2	8	3	3	1	
24	1	2	7	6	3	3	6	6	
	2	3	5	5	3	2	5	5	
	3	4	4	3	3	1	4	5	
25	1	3	7	8	4	6	9	9	
	2	6	6	6	3	4	9	7	
	3	10	6	4	2	3	9	6	
26	1	4	9	7	7	10	10	7	
	2	5	8	7	7	10	9	7	
	3	10	8	7	6	10	8	7	
27	1	2	10	5	8	8	3	4	
	2	3	6	3	3	8	3	3	
	3	4	5	3	3	8	1	2	
28	1	1	4	8	6	10	1	9	
	2	2	3	6	5	6	1	5	
	3	10	3	5	5	6	1	2	
29	1	6	8	9	6	9	8	5	
	2	8	5	7	4	8	4	4	
	3	9	3	4	4	8	3	3	
30	1	1	4	8	7	7	6	9	
	2	3	3	3	6	5	5	8	
	3	9	2	2	4	5	3	4	
31	1	3	2	4	5	9	8	4	
	2	4	1	4	4	9	6	2	
	3	7	1	1	2	8	4	2	
32	1	3	10	2	6	4	8	10	
	2	4	9	2	3	4	6	8	
	3	9	9	2	3	1	3	7	
33	1	6	10	1	6	9	9	7	
	2	7	5	1	6	9	5	5	
	3	10	4	1	4	9	4	5	
34	1	5	6	9	3	8	8	7	
	2	8	4	8	2	6	6	4	
	3	10	3	8	2	5	5	4	
35	1	5	4	7	1	4	7	5	
	2	8	3	6	1	4	5	4	
	3	9	2	3	1	4	3	2	
36	1	1	4	7	5	7	4	4	
	2	2	4	6	4	6	2	3	
	3	5	2	6	2	6	2	1	
37	1	3	10	10	9	3	8	3	
	2	9	7	9	8	2	6	2	
	3	10	7	8	7	2	3	2	
38	1	2	7	5	5	4	5	9	
	2	8	4	3	4	4	4	8	
	3	9	3	3	4	4	4	8	
39	1	7	3	3	7	1	8	5	
	2	8	1	3	5	1	5	3	
	3	9	1	2	4	1	3	2	
40	1	3	7	6	8	6	6	10	
	2	7	7	4	7	4	2	4	
	3	8	7	3	7	3	2	2	
41	1	2	4	5	8	7	8	8	
	2	3	4	4	5	7	7	7	
	3	6	4	3	4	6	7	7	
42	1	1	6	5	7	4	5	4	
	2	3	5	5	5	3	5	4	
	3	4	5	5	4	2	1	4	
43	1	1	7	2	5	4	7	5	
	2	2	7	1	4	3	7	4	
	3	3	7	1	2	2	7	4	
44	1	2	2	9	6	6	6	7	
	2	3	2	8	6	4	6	5	
	3	8	1	7	6	3	6	3	
45	1	2	6	7	8	8	6	9	
	2	8	6	7	7	6	2	6	
	3	10	6	5	3	3	1	4	
46	1	1	7	7	5	8	4	4	
	2	6	5	7	4	7	4	4	
	3	8	3	7	3	7	4	3	
47	1	3	2	8	7	5	8	2	
	2	4	2	5	5	3	8	2	
	3	5	2	4	5	2	7	1	
48	1	7	4	10	8	7	3	6	
	2	8	4	6	6	5	2	4	
	3	9	4	1	5	3	2	3	
49	1	6	2	8	9	9	5	9	
	2	8	1	7	6	4	4	7	
	3	9	1	7	3	3	3	4	
50	1	3	7	9	6	7	7	9	
	2	4	7	8	5	5	7	8	
	3	9	6	8	4	1	7	8	
51	1	1	9	5	10	3	4	6	
	2	2	8	5	10	2	4	3	
	3	6	8	4	10	2	3	2	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	40	40	267	259	255	259

************************************************************************
