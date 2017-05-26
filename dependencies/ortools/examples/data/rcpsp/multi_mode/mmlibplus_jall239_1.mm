jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 7 8 9 
2	9	6		16 15 14 12 11 10 
3	9	6		16 15 14 12 11 10 
4	9	5		14 13 12 11 10 
5	9	5		21 16 14 12 10 
6	9	5		21 16 14 12 10 
7	9	5		21 18 15 14 12 
8	9	4		18 15 14 11 
9	9	6		21 20 19 17 16 14 
10	9	4		22 20 19 17 
11	9	4		22 21 20 17 
12	9	4		26 22 20 17 
13	9	3		26 20 17 
14	9	6		28 26 25 24 23 22 
15	9	4		28 23 22 19 
16	9	3		25 23 18 
17	9	5		31 30 28 25 24 
18	9	4		32 28 26 22 
19	9	4		30 27 26 25 
20	9	3		31 25 23 
21	9	5		37 35 30 29 26 
22	9	4		33 30 29 27 
23	9	5		37 35 33 30 29 
24	9	4		34 33 32 27 
25	9	5		39 37 33 32 29 
26	9	3		39 34 31 
27	9	6		51 42 39 38 37 35 
28	9	6		51 42 39 37 36 35 
29	9	4		41 38 36 34 
30	9	4		39 38 36 34 
31	9	2		42 33 
32	9	6		51 50 42 41 38 36 
33	9	5		51 50 41 38 36 
34	9	8		51 50 49 48 46 45 44 42 
35	9	6		50 49 48 46 41 40 
36	9	5		49 48 47 46 40 
37	9	4		49 46 41 40 
38	9	5		48 46 45 44 43 
39	9	4		46 45 44 43 
40	9	3		45 44 43 
41	9	3		47 44 43 
42	9	2		47 43 
43	9	1		52 
44	9	1		52 
45	9	1		52 
46	9	1		52 
47	9	1		52 
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
2	1	3	23	23	24	10	
	2	4	19	23	22	9	
	3	10	19	23	19	8	
	4	13	18	23	17	7	
	5	14	16	23	17	6	
	6	15	13	23	14	5	
	7	17	12	23	13	4	
	8	22	11	23	11	4	
	9	27	10	23	9	3	
3	1	3	22	20	16	20	
	2	4	22	19	16	19	
	3	5	18	19	16	18	
	4	9	15	19	16	18	
	5	20	11	18	15	18	
	6	23	9	18	15	17	
	7	25	6	17	15	16	
	8	28	5	17	15	16	
	9	30	2	17	15	16	
4	1	7	22	27	20	10	
	2	9	20	26	19	10	
	3	10	18	25	18	8	
	4	14	18	25	18	7	
	5	21	14	22	17	6	
	6	22	14	22	16	6	
	7	26	11	19	15	5	
	8	28	9	19	14	3	
	9	29	8	17	13	3	
5	1	4	22	21	25	28	
	2	5	21	20	25	28	
	3	17	18	19	25	26	
	4	22	15	19	25	23	
	5	24	14	18	25	22	
	6	25	12	18	25	19	
	7	26	11	17	25	18	
	8	27	9	17	25	15	
	9	28	6	16	25	14	
6	1	9	11	16	21	30	
	2	10	11	16	21	29	
	3	13	10	14	21	29	
	4	14	10	12	21	29	
	5	16	9	9	21	28	
	6	19	9	8	21	28	
	7	20	8	7	21	28	
	8	23	8	5	21	28	
	9	29	8	4	21	28	
7	1	6	27	17	23	29	
	2	8	26	17	20	28	
	3	9	25	15	20	27	
	4	10	25	11	18	25	
	5	11	25	9	15	25	
	6	12	24	7	12	24	
	7	15	23	7	10	23	
	8	16	23	4	9	22	
	9	24	23	2	7	22	
8	1	2	27	19	22	8	
	2	3	26	17	22	7	
	3	4	22	15	21	7	
	4	8	18	14	20	6	
	5	14	15	13	20	6	
	6	19	13	12	20	5	
	7	20	11	11	19	5	
	8	27	5	10	19	5	
	9	28	5	8	18	4	
9	1	1	17	10	18	25	
	2	3	16	10	16	23	
	3	5	16	9	16	21	
	4	6	15	9	16	19	
	5	8	15	9	15	19	
	6	13	14	8	15	17	
	7	18	14	7	14	15	
	8	22	13	7	14	12	
	9	29	13	7	13	11	
10	1	1	24	13	9	25	
	2	2	22	11	9	22	
	3	11	20	11	9	20	
	4	12	16	11	9	18	
	5	14	14	10	9	15	
	6	15	13	9	9	15	
	7	20	9	9	9	12	
	8	23	7	7	9	9	
	9	24	5	7	9	5	
11	1	9	28	20	17	15	
	2	17	26	18	17	14	
	3	18	23	15	16	12	
	4	19	21	14	16	11	
	5	23	20	12	15	10	
	6	24	17	10	15	10	
	7	25	16	8	14	9	
	8	27	12	6	13	7	
	9	29	12	3	13	7	
12	1	3	25	13	26	22	
	2	6	23	12	25	21	
	3	19	21	12	25	21	
	4	23	21	12	25	20	
	5	24	19	11	25	20	
	6	26	19	11	25	19	
	7	27	17	10	25	19	
	8	28	16	10	25	20	
	9	29	16	10	25	19	
13	1	7	11	15	25	29	
	2	8	11	14	24	28	
	3	9	11	13	20	28	
	4	11	11	13	18	26	
	5	12	10	12	15	26	
	6	14	10	11	12	24	
	7	17	10	11	11	23	
	8	19	10	11	7	23	
	9	29	10	10	6	22	
14	1	8	25	22	20	27	
	2	9	21	19	18	26	
	3	15	19	16	18	26	
	4	16	18	14	16	26	
	5	21	14	12	15	26	
	6	22	13	8	15	26	
	7	23	10	5	14	26	
	8	26	9	4	13	26	
	9	29	5	1	12	26	
15	1	3	18	13	20	17	
	2	4	18	13	19	15	
	3	7	17	13	18	15	
	4	8	17	13	18	14	
	5	12	16	13	18	13	
	6	13	15	13	17	13	
	7	15	14	13	16	12	
	8	20	14	13	16	10	
	9	22	13	13	16	10	
16	1	3	26	6	27	28	
	2	7	24	6	27	26	
	3	10	23	5	27	26	
	4	13	22	5	27	25	
	5	14	20	4	27	25	
	6	18	18	4	27	24	
	7	28	17	3	27	24	
	8	29	17	3	27	23	
	9	30	16	3	27	22	
17	1	4	10	13	17	24	
	2	5	10	12	17	23	
	3	7	10	12	17	22	
	4	8	9	11	17	19	
	5	9	9	10	17	19	
	6	14	9	9	17	17	
	7	18	9	8	17	15	
	8	19	8	7	17	13	
	9	27	8	6	17	12	
18	1	1	23	27	21	14	
	2	5	22	22	19	12	
	3	10	22	21	15	11	
	4	11	21	17	14	9	
	5	12	19	13	12	7	
	6	16	19	12	8	6	
	7	19	17	10	7	4	
	8	25	16	7	4	3	
	9	29	16	5	4	1	
19	1	1	22	26	27	22	
	2	4	22	22	27	21	
	3	9	21	20	27	19	
	4	13	21	19	27	18	
	5	18	21	15	27	18	
	6	21	20	12	27	17	
	7	23	19	12	27	16	
	8	25	19	8	27	15	
	9	30	19	5	27	13	
20	1	1	25	19	27	12	
	2	4	23	16	23	12	
	3	5	21	14	21	12	
	4	6	21	12	19	12	
	5	10	19	11	19	12	
	6	19	18	8	16	12	
	7	24	17	8	13	12	
	8	25	16	4	12	12	
	9	30	15	3	8	12	
21	1	4	28	25	19	25	
	2	9	26	21	19	24	
	3	12	25	21	18	21	
	4	15	23	17	17	19	
	5	20	21	14	16	15	
	6	21	20	11	15	13	
	7	25	17	11	13	10	
	8	26	15	8	12	10	
	9	30	15	5	11	7	
22	1	7	30	25	26	23	
	2	9	28	24	23	21	
	3	18	24	21	22	18	
	4	19	24	20	19	17	
	5	23	20	19	19	16	
	6	24	20	15	18	15	
	7	25	18	15	15	12	
	8	27	15	13	13	9	
	9	29	14	9	12	9	
23	1	1	28	17	28	11	
	2	6	27	15	28	10	
	3	8	24	15	28	9	
	4	9	21	13	28	8	
	5	11	19	13	28	8	
	6	12	16	12	28	7	
	7	20	15	10	28	6	
	8	25	13	9	28	5	
	9	28	9	9	28	5	
24	1	1	14	27	9	22	
	2	4	13	24	8	21	
	3	7	13	24	8	19	
	4	15	12	22	8	18	
	5	16	12	20	7	18	
	6	19	12	19	7	17	
	7	21	11	17	7	16	
	8	22	11	16	7	15	
	9	28	11	14	7	14	
25	1	1	26	8	23	10	
	2	13	23	8	22	10	
	3	15	20	8	20	10	
	4	16	18	8	20	10	
	5	23	15	8	19	10	
	6	27	15	8	16	10	
	7	28	11	8	16	10	
	8	29	10	8	14	10	
	9	30	7	8	13	10	
26	1	1	24	27	16	23	
	2	8	21	24	15	23	
	3	16	18	24	13	19	
	4	19	17	22	11	17	
	5	22	15	19	10	13	
	6	23	11	16	9	13	
	7	24	6	12	6	8	
	8	27	4	12	6	5	
	9	30	1	9	4	3	
27	1	8	23	21	27	16	
	2	10	21	21	24	15	
	3	12	21	19	24	13	
	4	15	21	17	23	10	
	5	16	20	15	21	9	
	6	23	19	13	20	8	
	7	24	19	9	19	5	
	8	28	18	9	18	3	
	9	30	17	5	18	2	
28	1	3	24	17	20	30	
	2	4	20	15	18	27	
	3	6	18	13	17	26	
	4	7	16	12	17	24	
	5	12	15	10	14	22	
	6	13	11	7	13	20	
	7	16	8	5	12	18	
	8	21	6	5	11	16	
	9	27	5	3	10	15	
29	1	5	23	27	1	23	
	2	7	22	26	1	21	
	3	15	20	26	1	18	
	4	16	18	25	1	18	
	5	17	16	24	1	16	
	6	18	15	24	1	12	
	7	24	11	23	1	11	
	8	25	9	23	1	9	
	9	28	9	23	1	8	
30	1	3	22	13	27	24	
	2	7	21	10	25	24	
	3	11	20	9	23	23	
	4	12	19	9	21	23	
	5	13	19	8	21	23	
	6	16	18	6	19	22	
	7	23	18	6	16	22	
	8	24	16	5	14	21	
	9	30	16	4	13	21	
31	1	4	16	15	26	14	
	2	5	13	14	26	14	
	3	6	11	13	25	14	
	4	7	9	12	25	13	
	5	12	8	10	25	13	
	6	13	7	10	24	13	
	7	17	6	8	23	13	
	8	28	5	7	23	12	
	9	29	3	7	23	12	
32	1	2	11	11	26	5	
	2	3	11	9	24	5	
	3	8	11	9	21	5	
	4	10	10	7	18	5	
	5	11	10	7	17	5	
	6	21	10	7	15	4	
	7	25	9	5	11	4	
	8	26	9	4	11	4	
	9	27	9	4	7	4	
33	1	1	22	13	24	28	
	2	2	22	13	24	26	
	3	9	22	11	24	26	
	4	19	22	11	24	24	
	5	24	22	10	23	22	
	6	26	21	8	23	22	
	7	27	21	8	23	21	
	8	28	21	7	22	19	
	9	30	21	6	22	19	
34	1	1	26	17	19	23	
	2	5	23	15	16	20	
	3	6	22	14	16	19	
	4	8	20	13	14	19	
	5	16	17	11	13	17	
	6	22	12	8	11	15	
	7	24	8	7	10	15	
	8	25	8	6	9	13	
	9	27	2	4	9	12	
35	1	2	30	30	24	4	
	2	6	29	29	21	3	
	3	14	29	29	20	3	
	4	15	28	28	20	3	
	5	16	27	28	18	3	
	6	23	27	28	17	3	
	7	26	26	28	15	3	
	8	27	26	27	14	3	
	9	30	26	27	12	3	
36	1	1	27	16	25	4	
	2	6	26	16	21	3	
	3	8	26	14	20	3	
	4	9	25	12	19	3	
	5	12	25	11	17	3	
	6	13	25	10	15	2	
	7	24	25	9	14	2	
	8	27	24	8	13	2	
	9	30	24	6	10	2	
37	1	2	15	21	22	14	
	2	4	15	20	21	12	
	3	12	14	20	20	11	
	4	13	13	19	18	11	
	5	14	12	16	17	9	
	6	20	10	15	15	9	
	7	21	9	13	13	7	
	8	22	8	12	13	6	
	9	23	8	12	11	5	
38	1	6	30	13	28	17	
	2	10	29	12	28	17	
	3	13	29	11	27	15	
	4	16	28	11	26	13	
	5	18	28	10	26	10	
	6	19	28	10	25	9	
	7	23	28	9	25	7	
	8	28	27	8	25	5	
	9	30	27	8	24	5	
39	1	2	30	12	21	28	
	2	3	29	12	19	25	
	3	6	29	11	17	24	
	4	9	28	11	16	22	
	5	10	28	10	16	19	
	6	16	27	10	15	18	
	7	20	26	9	14	16	
	8	21	26	9	13	16	
	9	26	26	8	12	13	
40	1	6	27	20	21	26	
	2	7	26	19	18	24	
	3	9	26	19	16	20	
	4	14	24	18	14	17	
	5	15	24	18	13	17	
	6	22	22	17	11	13	
	7	25	22	17	10	10	
	8	26	21	16	9	8	
	9	28	19	16	6	7	
41	1	3	27	28	28	13	
	2	5	23	25	26	12	
	3	8	22	23	26	12	
	4	12	22	18	22	12	
	5	15	18	15	21	12	
	6	16	18	12	20	12	
	7	19	15	8	19	12	
	8	20	13	5	15	12	
	9	22	13	5	15	11	
42	1	3	27	10	23	21	
	2	13	22	10	22	20	
	3	15	22	8	19	17	
	4	20	18	8	15	17	
	5	21	16	7	15	14	
	6	25	15	5	12	10	
	7	28	12	4	11	10	
	8	29	11	3	6	8	
	9	30	10	3	4	5	
43	1	1	4	22	11	18	
	2	7	4	22	10	18	
	3	8	4	21	9	18	
	4	9	4	19	8	18	
	5	13	3	18	8	18	
	6	15	3	18	8	17	
	7	17	2	17	7	18	
	8	18	2	15	7	18	
	9	22	2	15	6	18	
44	1	2	16	15	13	28	
	2	5	14	15	13	26	
	3	6	13	14	12	23	
	4	12	12	14	11	22	
	5	13	11	13	10	22	
	6	15	10	12	9	19	
	7	16	9	11	8	17	
	8	24	8	11	8	16	
	9	28	8	10	7	15	
45	1	1	16	16	15	29	
	2	11	14	16	14	29	
	3	12	14	15	14	29	
	4	16	11	13	14	29	
	5	17	9	13	13	28	
	6	18	9	13	13	27	
	7	20	7	12	13	28	
	8	26	3	10	13	28	
	9	28	2	10	13	28	
46	1	1	20	25	19	7	
	2	2	16	24	18	7	
	3	6	16	24	18	6	
	4	11	14	23	17	6	
	5	12	10	22	17	5	
	6	15	10	22	17	4	
	7	16	6	21	16	4	
	8	17	6	21	15	3	
	9	27	4	21	15	3	
47	1	1	13	14	8	22	
	2	4	12	12	8	18	
	3	10	12	10	6	16	
	4	11	10	8	6	14	
	5	13	9	8	5	12	
	6	17	8	6	4	12	
	7	19	7	4	3	10	
	8	21	5	3	2	7	
	9	27	5	2	2	4	
48	1	5	30	14	28	23	
	2	8	27	13	25	22	
	3	10	25	12	24	21	
	4	13	24	11	22	20	
	5	14	21	10	22	17	
	6	16	20	10	21	16	
	7	17	18	10	20	16	
	8	27	14	8	18	14	
	9	29	14	8	16	14	
49	1	6	20	23	27	13	
	2	7	17	21	25	11	
	3	14	15	18	24	9	
	4	15	14	16	20	8	
	5	16	11	15	19	6	
	6	21	8	13	15	5	
	7	26	7	9	14	5	
	8	27	5	9	12	4	
	9	28	2	5	10	2	
50	1	1	7	28	27	10	
	2	7	6	27	24	10	
	3	11	6	27	19	10	
	4	16	6	27	17	10	
	5	18	6	26	12	10	
	6	22	6	26	12	9	
	7	23	6	25	8	10	
	8	28	6	25	6	10	
	9	29	6	25	1	10	
51	1	2	19	18	18	14	
	2	5	17	17	16	12	
	3	10	17	17	15	10	
	4	12	15	16	14	10	
	5	14	15	15	14	8	
	6	15	14	15	13	7	
	7	18	13	14	11	5	
	8	19	11	14	10	3	
	9	27	11	14	10	2	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	100	91	845	751

************************************************************************
