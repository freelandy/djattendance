jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 6 9 
2	9	5		16 14 11 10 7 
3	9	3		14 10 7 
4	9	2		8 7 
5	9	6		22 19 15 14 13 12 
6	9	6		22 19 17 16 14 12 
7	9	5		22 19 15 13 12 
8	9	4		22 19 13 12 
9	9	3		19 15 12 
10	9	4		21 20 19 13 
11	9	8		27 26 25 24 23 21 20 18 
12	9	6		27 26 24 23 21 20 
13	9	5		26 25 24 23 17 
14	9	5		26 25 24 23 20 
15	9	3		27 25 18 
16	9	6		35 32 31 30 28 24 
17	9	1		18 
18	9	8		37 35 33 32 31 30 29 28 
19	9	5		32 31 30 29 25 
20	9	7		37 35 33 32 30 29 28 
21	9	6		37 33 32 31 29 28 
22	9	6		33 32 31 30 29 28 
23	9	4		38 37 35 29 
24	9	3		37 33 29 
25	9	3		37 35 28 
26	9	3		38 30 29 
27	9	3		38 35 29 
28	9	4		47 38 36 34 
29	9	3		47 36 34 
30	9	4		47 42 39 36 
31	9	4		47 42 40 38 
32	9	2		47 34 
33	9	3		47 40 38 
34	9	4		51 42 40 39 
35	9	3		51 40 39 
36	9	3		51 41 40 
37	9	3		51 41 40 
38	9	2		51 39 
39	9	1		41 
40	9	4		50 49 46 43 
41	9	3		50 45 43 
42	9	4		50 49 46 44 
43	9	1		44 
44	9	1		48 
45	9	1		49 
46	9	1		48 
47	9	1		48 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	4	25	24	28	20	
	2	6	22	23	27	19	
	3	11	21	22	26	18	
	4	12	19	21	26	18	
	5	13	19	21	24	17	
	6	19	16	20	23	16	
	7	23	15	18	23	16	
	8	24	13	17	22	15	
	9	28	12	16	20	15	
3	1	2	27	21	20	24	
	2	3	26	19	19	21	
	3	9	21	19	17	19	
	4	11	18	17	17	19	
	5	12	18	16	14	16	
	6	16	14	15	14	13	
	7	22	12	14	12	9	
	8	23	6	12	12	9	
	9	30	6	11	11	5	
4	1	1	24	28	21	25	
	2	3	24	25	18	23	
	3	4	23	24	18	21	
	4	5	22	22	16	19	
	5	6	20	21	13	16	
	6	12	20	19	12	16	
	7	13	19	16	11	12	
	8	16	17	13	7	10	
	9	26	17	12	6	10	
5	1	1	19	20	27	1	
	2	16	18	19	26	1	
	3	20	17	18	24	1	
	4	24	16	17	21	1	
	5	25	15	16	21	1	
	6	26	14	14	18	1	
	7	27	13	14	16	1	
	8	28	12	13	16	1	
	9	29	11	11	14	1	
6	1	1	22	13	22	27	
	2	2	19	11	19	26	
	3	6	17	11	18	26	
	4	13	16	10	16	26	
	5	14	14	10	13	26	
	6	16	12	9	12	26	
	7	28	8	9	11	26	
	8	29	8	7	8	26	
	9	30	4	7	7	26	
7	1	1	12	29	12	20	
	2	2	12	29	11	19	
	3	8	12	29	11	18	
	4	9	12	29	11	17	
	5	14	12	29	10	16	
	6	21	11	29	10	16	
	7	22	11	29	10	15	
	8	23	11	29	10	14	
	9	27	11	29	10	13	
8	1	1	26	15	27	22	
	2	7	26	14	27	21	
	3	13	26	13	26	21	
	4	14	26	13	24	20	
	5	15	26	12	24	20	
	6	18	25	10	23	20	
	7	19	25	9	22	19	
	8	21	25	9	20	19	
	9	29	25	8	19	19	
9	1	2	19	15	17	22	
	2	4	18	14	16	21	
	3	5	17	14	15	21	
	4	6	14	12	14	20	
	5	16	13	11	14	20	
	6	18	13	10	12	19	
	7	19	10	10	12	19	
	8	25	9	8	10	19	
	9	29	9	8	9	18	
10	1	1	26	8	27	27	
	2	3	22	7	25	26	
	3	9	20	7	22	26	
	4	11	18	7	21	26	
	5	14	14	5	18	25	
	6	16	11	5	14	25	
	7	20	8	4	14	25	
	8	23	8	3	10	25	
	9	25	4	3	8	25	
11	1	2	25	20	22	14	
	2	7	21	19	20	14	
	3	8	20	17	18	14	
	4	10	18	15	13	14	
	5	11	16	13	12	13	
	6	12	13	11	10	13	
	7	14	11	7	8	13	
	8	18	11	6	6	13	
	9	24	8	4	3	13	
12	1	1	9	25	18	26	
	2	2	8	24	16	24	
	3	3	7	22	14	24	
	4	5	6	22	14	22	
	5	17	6	21	12	22	
	6	18	5	20	10	20	
	7	19	5	19	10	18	
	8	20	5	18	8	18	
	9	21	4	18	7	17	
13	1	5	12	27	28	24	
	2	7	12	27	27	23	
	3	16	12	25	26	22	
	4	17	11	21	26	20	
	5	19	11	18	25	19	
	6	21	10	17	24	17	
	7	22	10	15	24	15	
	8	26	9	11	23	15	
	9	30	9	9	23	14	
14	1	5	21	7	27	29	
	2	9	21	6	24	27	
	3	11	21	6	21	26	
	4	16	21	6	17	24	
	5	21	21	5	14	23	
	6	23	21	5	12	20	
	7	26	21	4	8	20	
	8	27	21	4	6	18	
	9	30	21	4	1	15	
15	1	4	30	26	4	24	
	2	9	28	26	4	22	
	3	15	26	26	4	21	
	4	17	23	26	4	18	
	5	18	22	25	3	15	
	6	21	21	25	3	13	
	7	27	19	24	2	13	
	8	29	18	24	2	9	
	9	30	16	24	2	8	
16	1	6	27	21	29	14	
	2	7	26	21	27	14	
	3	8	26	19	27	13	
	4	10	25	17	26	11	
	5	15	24	13	25	10	
	6	20	24	13	25	9	
	7	26	23	9	24	8	
	8	27	22	9	24	7	
	9	28	22	5	23	7	
17	1	5	20	14	18	16	
	2	6	19	14	17	14	
	3	7	18	14	16	11	
	4	9	16	14	16	11	
	5	10	16	14	14	8	
	6	13	14	14	14	6	
	7	21	14	14	13	6	
	8	25	13	14	11	4	
	9	26	11	14	10	2	
18	1	4	23	15	24	18	
	2	5	22	15	22	17	
	3	6	22	15	20	17	
	4	9	22	15	18	17	
	5	10	21	15	15	17	
	6	11	21	14	14	17	
	7	16	21	14	10	17	
	8	19	21	14	8	17	
	9	20	21	14	8	16	
19	1	1	17	21	28	21	
	2	5	16	19	28	19	
	3	8	12	18	27	17	
	4	11	12	18	26	16	
	5	13	9	16	24	14	
	6	16	8	15	24	14	
	7	23	5	12	22	12	
	8	26	4	12	22	11	
	9	27	2	11	21	10	
20	1	3	27	22	12	29	
	2	9	23	21	12	24	
	3	15	22	19	10	21	
	4	18	20	16	10	20	
	5	19	18	13	8	16	
	6	23	18	12	7	16	
	7	24	15	7	5	13	
	8	28	13	7	4	10	
	9	30	12	4	3	8	
21	1	9	29	28	30	27	
	2	13	27	27	30	25	
	3	15	25	25	30	23	
	4	17	24	23	30	20	
	5	18	23	23	30	19	
	6	19	22	20	30	15	
	7	22	22	19	30	15	
	8	24	21	17	30	10	
	9	28	19	16	30	9	
22	1	8	23	28	20	28	
	2	12	22	27	19	26	
	3	15	20	27	19	26	
	4	18	20	26	19	26	
	5	19	18	26	19	25	
	6	21	17	25	19	24	
	7	25	17	24	19	24	
	8	28	15	24	19	23	
	9	30	14	24	19	22	
23	1	5	18	26	23	29	
	2	6	16	25	22	27	
	3	7	16	25	22	25	
	4	10	16	24	22	23	
	5	12	14	24	22	23	
	6	13	14	24	21	22	
	7	14	13	24	21	21	
	8	25	13	23	21	19	
	9	28	12	23	21	17	
24	1	6	27	21	10	29	
	2	10	26	21	8	26	
	3	11	25	21	8	23	
	4	12	24	21	7	23	
	5	13	23	21	6	20	
	6	21	23	21	6	19	
	7	22	22	21	6	17	
	8	23	21	21	4	13	
	9	27	20	21	4	11	
25	1	5	20	16	23	17	
	2	10	19	15	22	17	
	3	12	16	14	22	17	
	4	14	14	14	20	17	
	5	17	12	12	19	17	
	6	18	10	11	17	17	
	7	19	8	10	16	17	
	8	27	6	7	16	17	
	9	28	5	6	14	17	
26	1	2	11	13	15	24	
	2	14	11	10	14	23	
	3	18	9	9	13	23	
	4	19	9	8	12	23	
	5	20	8	8	12	23	
	6	21	8	5	10	22	
	7	22	6	4	10	22	
	8	24	5	4	9	22	
	9	30	5	3	7	22	
27	1	8	11	21	21	28	
	2	10	11	20	20	27	
	3	11	11	18	20	27	
	4	16	10	13	20	27	
	5	22	10	13	19	27	
	6	26	10	9	19	27	
	7	27	10	6	19	27	
	8	28	9	6	19	27	
	9	30	9	4	19	27	
28	1	5	20	26	12	24	
	2	8	19	24	11	24	
	3	9	17	24	10	24	
	4	15	15	23	9	23	
	5	20	13	22	9	23	
	6	23	11	20	8	23	
	7	25	7	19	6	23	
	8	27	5	18	5	22	
	9	29	3	18	5	22	
29	1	3	30	21	19	18	
	2	10	29	21	19	18	
	3	15	29	20	18	18	
	4	16	29	19	17	18	
	5	20	29	18	16	18	
	6	21	29	17	14	18	
	7	22	29	16	14	18	
	8	26	29	16	13	18	
	9	28	29	15	11	18	
30	1	1	15	24	20	21	
	2	2	15	22	19	17	
	3	3	15	20	19	15	
	4	4	15	20	18	13	
	5	7	15	18	17	11	
	6	13	15	16	17	9	
	7	14	15	15	17	7	
	8	19	15	13	15	7	
	9	24	15	12	15	4	
31	1	1	22	30	21	28	
	2	5	20	29	17	24	
	3	14	17	28	15	24	
	4	18	14	27	14	18	
	5	23	14	26	9	18	
	6	24	12	25	8	16	
	7	25	10	25	6	10	
	8	26	7	24	3	9	
	9	27	6	23	3	7	
32	1	1	27	25	30	28	
	2	5	27	24	23	26	
	3	6	24	18	20	26	
	4	7	23	18	18	24	
	5	14	18	15	15	22	
	6	16	17	13	11	18	
	7	25	14	7	9	17	
	8	29	13	7	4	14	
	9	30	10	4	4	12	
33	1	6	29	11	29	23	
	2	7	24	10	28	21	
	3	8	24	10	26	19	
	4	18	21	9	26	18	
	5	19	19	9	25	16	
	6	24	18	8	24	13	
	7	26	15	7	23	13	
	8	27	14	7	22	11	
	9	30	12	7	21	8	
34	1	3	25	8	22	15	
	2	5	24	7	20	12	
	3	6	24	7	18	12	
	4	9	22	7	17	10	
	5	10	21	7	13	9	
	6	19	21	7	13	7	
	7	22	20	7	10	6	
	8	23	18	7	9	4	
	9	28	17	7	8	3	
35	1	1	13	21	10	13	
	2	4	13	21	9	13	
	3	7	13	20	9	13	
	4	9	12	19	8	13	
	5	11	12	18	8	13	
	6	13	11	17	7	12	
	7	14	10	17	7	12	
	8	15	10	16	5	12	
	9	20	10	15	5	12	
36	1	1	20	27	30	4	
	2	3	18	26	28	3	
	3	4	15	24	27	3	
	4	7	15	24	26	3	
	5	12	13	21	26	3	
	6	21	10	21	24	2	
	7	23	9	20	24	2	
	8	24	7	17	22	2	
	9	28	6	17	22	2	
37	1	1	29	26	9	25	
	2	2	28	24	8	23	
	3	11	26	22	7	23	
	4	19	23	21	6	21	
	5	21	22	18	6	17	
	6	22	20	18	5	14	
	7	23	18	16	5	14	
	8	26	16	14	3	10	
	9	30	16	13	3	7	
38	1	7	29	26	25	30	
	2	9	28	25	25	29	
	3	11	27	25	22	29	
	4	23	27	25	21	29	
	5	24	26	24	19	29	
	6	26	26	23	18	29	
	7	28	25	23	17	29	
	8	29	25	23	13	29	
	9	30	24	22	13	29	
39	1	1	17	20	21	22	
	2	2	15	20	20	22	
	3	5	13	19	18	21	
	4	6	12	17	14	20	
	5	8	9	17	13	19	
	6	16	8	16	9	17	
	7	17	8	15	7	17	
	8	20	4	13	5	16	
	9	30	3	13	3	15	
40	1	2	23	14	27	29	
	2	5	19	14	24	25	
	3	10	18	13	24	25	
	4	11	15	13	22	22	
	5	12	15	12	21	20	
	6	16	11	12	19	18	
	7	20	9	12	17	15	
	8	25	8	11	16	14	
	9	29	6	11	14	13	
41	1	4	18	23	25	19	
	2	7	17	23	22	19	
	3	11	16	23	21	17	
	4	12	14	22	17	16	
	5	13	12	22	16	16	
	6	14	11	22	12	15	
	7	20	9	22	11	14	
	8	21	8	21	8	12	
	9	23	7	21	6	12	
42	1	2	20	19	27	11	
	2	4	17	18	25	9	
	3	5	14	18	25	8	
	4	8	12	17	21	7	
	5	9	10	16	20	7	
	6	12	9	14	20	7	
	7	20	8	13	16	5	
	8	25	5	12	14	5	
	9	30	3	11	13	4	
43	1	1	14	14	21	26	
	2	9	13	14	20	25	
	3	23	13	14	19	25	
	4	25	11	13	18	23	
	5	26	10	13	18	23	
	6	27	9	13	17	21	
	7	28	9	12	16	19	
	8	29	7	12	16	19	
	9	30	6	12	15	18	
44	1	1	15	20	27	17	
	2	6	14	19	25	17	
	3	12	13	19	21	17	
	4	13	13	17	20	17	
	5	16	12	16	17	17	
	6	17	11	16	17	17	
	7	18	9	14	14	17	
	8	19	8	14	11	17	
	9	25	8	13	11	17	
45	1	3	21	20	19	22	
	2	9	20	19	17	21	
	3	13	20	17	14	20	
	4	14	19	13	14	20	
	5	18	18	13	10	17	
	6	20	18	10	9	17	
	7	25	17	10	7	15	
	8	26	17	8	4	15	
	9	28	17	5	3	13	
46	1	1	27	10	7	27	
	2	4	24	8	7	25	
	3	7	23	7	6	22	
	4	15	20	6	6	20	
	5	16	16	6	5	20	
	6	19	15	4	4	16	
	7	22	11	4	3	15	
	8	25	8	3	3	11	
	9	30	4	2	2	10	
47	1	2	28	10	16	13	
	2	4	26	10	14	13	
	3	6	24	9	14	13	
	4	17	22	8	13	13	
	5	19	21	8	12	13	
	6	21	18	7	12	13	
	7	22	18	6	11	13	
	8	25	14	5	10	13	
	9	29	12	5	9	13	
48	1	1	23	17	17	22	
	2	10	23	16	15	21	
	3	11	21	15	13	20	
	4	13	19	15	13	19	
	5	15	16	13	11	17	
	6	19	13	13	10	17	
	7	23	10	13	9	15	
	8	28	8	11	8	15	
	9	30	7	11	7	14	
49	1	1	26	16	18	17	
	2	2	25	16	17	17	
	3	9	23	15	16	15	
	4	10	20	13	13	12	
	5	17	16	13	11	12	
	6	20	14	11	10	10	
	7	23	13	11	10	7	
	8	26	10	9	7	6	
	9	27	9	8	5	5	
50	1	2	13	3	22	5	
	2	5	12	3	17	4	
	3	9	11	3	15	3	
	4	11	10	3	13	3	
	5	15	10	3	12	2	
	6	23	9	2	8	2	
	7	24	7	2	8	1	
	8	25	6	2	4	1	
	9	26	6	2	3	1	
51	1	3	21	28	24	11	
	2	4	18	26	21	9	
	3	9	18	26	18	8	
	4	13	17	24	17	7	
	5	15	14	23	13	6	
	6	17	13	23	12	5	
	7	19	12	22	8	4	
	8	24	11	20	8	3	
	9	29	11	19	6	3	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	69	69	657	737

************************************************************************
