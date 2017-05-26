jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 6 7 10 
2	6	5		20 16 12 9 8 
3	6	2		22 5 
4	6	6		22 20 16 15 14 13 
5	6	5		20 16 15 13 11 
6	6	5		21 20 16 15 13 
7	6	3		20 14 12 
8	6	3		22 14 13 
9	6	4		22 18 17 14 
10	6	3		20 17 15 
11	6	2		18 14 
12	6	1		13 
13	6	4		34 23 18 17 
14	6	5		26 24 23 21 19 
15	6	4		34 23 19 18 
16	6	4		34 24 23 19 
17	6	3		26 24 19 
18	6	5		33 30 27 25 24 
19	6	6		37 33 30 28 27 25 
20	6	5		37 33 28 27 25 
21	6	5		37 34 33 27 25 
22	6	4		33 30 29 24 
23	6	6		38 37 36 35 33 32 
24	6	3		37 35 28 
25	6	3		38 31 29 
26	6	3		35 31 30 
27	6	2		38 29 
28	6	3		38 36 32 
29	6	3		40 36 35 
30	6	4		51 41 38 36 
31	6	3		51 40 36 
32	6	4		51 49 41 40 
33	6	5		51 49 48 44 40 
34	6	5		51 50 49 42 39 
35	6	5		51 50 49 47 41 
36	6	4		50 49 42 39 
37	6	6		51 50 49 48 43 42 
38	6	3		49 42 39 
39	6	4		48 46 44 43 
40	6	3		50 43 42 
41	6	3		48 44 42 
42	6	2		46 45 
43	6	1		47 
44	6	1		45 
45	6	1		52 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	2	4	3	5	2	24	29	
	2	4	4	3	4	1	22	27	
	3	11	4	3	4	1	20	24	
	4	21	4	2	4	1	17	19	
	5	22	3	1	4	1	15	19	
	6	24	3	1	4	1	14	14	
3	1	12	5	2	4	1	27	24	
	2	17	5	2	3	1	26	22	
	3	22	5	2	3	1	26	16	
	4	23	5	2	3	1	25	14	
	5	24	5	2	3	1	25	9	
	6	26	5	2	3	1	25	6	
4	1	2	5	5	3	4	23	21	
	2	9	4	4	3	4	19	17	
	3	16	4	3	3	3	15	16	
	4	20	3	3	3	3	13	12	
	5	21	3	3	3	3	9	5	
	6	24	3	2	3	2	4	2	
5	1	2	2	4	4	2	19	15	
	2	3	2	4	4	2	18	14	
	3	4	2	4	4	2	16	12	
	4	10	2	4	4	1	12	10	
	5	29	2	4	4	1	12	9	
	6	30	2	4	4	1	10	8	
6	1	1	3	3	5	4	29	26	
	2	11	3	3	3	4	28	23	
	3	14	3	3	3	4	27	22	
	4	17	3	3	2	4	27	20	
	5	28	3	3	1	4	25	15	
	6	29	3	3	1	4	25	13	
7	1	1	2	4	4	4	15	18	
	2	9	2	3	3	4	13	17	
	3	12	2	3	3	4	13	16	
	4	14	2	3	3	4	13	15	
	5	15	1	3	3	4	11	14	
	6	27	1	3	3	4	11	13	
8	1	7	5	4	5	2	23	27	
	2	16	4	3	4	1	23	25	
	3	17	4	3	4	1	21	22	
	4	18	4	3	4	1	21	19	
	5	25	4	3	3	1	20	18	
	6	30	4	3	3	1	18	13	
9	1	8	4	3	3	2	22	20	
	2	19	3	3	3	1	21	19	
	3	20	3	3	3	1	20	18	
	4	27	3	2	2	1	20	17	
	5	28	2	2	2	1	19	15	
	6	29	2	2	2	1	18	15	
10	1	2	2	2	5	1	24	22	
	2	6	2	1	4	1	22	21	
	3	9	2	1	4	1	21	20	
	4	15	2	1	4	1	21	19	
	5	20	2	1	3	1	18	17	
	6	22	2	1	3	1	18	16	
11	1	2	4	3	4	4	20	24	
	2	7	4	2	4	4	20	20	
	3	12	4	2	4	4	20	17	
	4	20	4	2	3	3	20	13	
	5	22	3	1	3	3	20	11	
	6	29	3	1	2	3	20	7	
12	1	1	2	2	5	4	11	26	
	2	11	1	1	4	4	11	22	
	3	12	1	1	3	3	10	18	
	4	16	1	1	3	3	9	16	
	5	21	1	1	3	2	9	13	
	6	28	1	1	2	2	8	10	
13	1	3	5	3	5	3	2	20	
	2	4	5	3	4	3	1	18	
	3	12	5	2	4	2	1	15	
	4	20	5	2	4	2	1	14	
	5	24	5	2	3	1	1	13	
	6	27	5	1	3	1	1	10	
14	1	2	4	4	3	4	15	25	
	2	3	3	4	3	3	14	23	
	3	17	3	3	3	2	11	23	
	4	23	2	2	3	2	8	22	
	5	27	2	2	3	2	6	22	
	6	28	2	1	3	1	4	21	
15	1	2	1	2	1	4	20	21	
	2	6	1	2	1	4	19	20	
	3	14	1	2	1	4	19	18	
	4	21	1	2	1	4	19	15	
	5	22	1	2	1	4	18	14	
	6	26	1	2	1	4	17	13	
16	1	5	4	3	4	3	15	16	
	2	6	4	3	3	3	13	13	
	3	8	4	3	3	3	13	12	
	4	19	3	2	3	3	13	12	
	5	26	3	1	2	2	11	10	
	6	30	2	1	2	2	11	10	
17	1	1	5	2	4	2	20	22	
	2	11	4	2	3	1	18	21	
	3	12	4	2	3	1	17	17	
	4	16	4	2	3	1	14	17	
	5	20	3	2	3	1	13	15	
	6	21	3	2	3	1	12	11	
18	1	4	2	4	4	3	29	24	
	2	10	2	4	4	3	26	24	
	3	14	2	4	4	3	22	21	
	4	20	2	4	4	3	22	20	
	5	21	2	4	4	3	19	19	
	6	27	2	4	4	3	16	17	
19	1	3	2	5	4	4	23	12	
	2	4	2	4	4	3	20	12	
	3	14	2	4	4	3	19	11	
	4	22	2	4	4	2	19	8	
	5	26	2	4	4	1	17	6	
	6	28	2	4	4	1	17	5	
20	1	12	3	5	3	5	8	23	
	2	15	3	5	3	5	7	18	
	3	17	3	5	3	5	7	15	
	4	23	3	5	3	5	5	13	
	5	25	3	5	2	5	4	12	
	6	26	3	5	2	5	4	9	
21	1	4	3	4	3	4	20	18	
	2	9	3	4	3	4	16	16	
	3	10	3	3	3	3	15	15	
	4	11	2	3	3	3	13	15	
	5	16	1	2	3	2	11	14	
	6	29	1	2	3	1	11	13	
22	1	2	5	3	3	2	26	20	
	2	6	3	3	3	2	25	19	
	3	8	3	3	3	2	24	19	
	4	10	2	3	2	2	23	18	
	5	11	1	3	1	2	22	18	
	6	27	1	3	1	2	22	17	
23	1	3	2	5	4	4	18	27	
	2	4	2	5	3	3	17	27	
	3	5	2	5	3	3	15	27	
	4	6	2	5	3	3	14	26	
	5	8	1	5	2	2	14	26	
	6	23	1	5	1	1	11	26	
24	1	13	5	4	3	3	18	21	
	2	17	4	3	3	3	15	19	
	3	18	4	3	3	3	15	17	
	4	19	4	3	2	3	10	15	
	5	20	3	2	1	3	8	14	
	6	24	3	2	1	3	7	12	
25	1	15	3	4	4	3	12	24	
	2	17	3	4	3	3	9	22	
	3	21	3	4	3	3	9	20	
	4	23	3	3	3	3	8	19	
	5	26	3	3	3	3	6	17	
	6	27	3	3	3	3	6	16	
26	1	5	4	3	4	5	9	29	
	2	9	3	3	3	4	6	29	
	3	13	3	3	3	4	6	28	
	4	20	3	3	2	4	4	29	
	5	21	2	2	2	4	4	29	
	6	22	2	2	1	4	3	29	
27	1	4	5	4	2	1	8	28	
	2	8	3	3	2	1	6	26	
	3	17	3	3	2	1	6	25	
	4	21	3	2	2	1	5	23	
	5	23	2	1	2	1	5	22	
	6	24	1	1	2	1	4	19	
28	1	1	1	4	5	1	8	16	
	2	2	1	4	5	1	8	15	
	3	9	1	4	5	1	6	13	
	4	19	1	4	5	1	5	10	
	5	27	1	3	5	1	5	10	
	6	29	1	3	5	1	3	7	
29	1	2	4	5	3	4	13	20	
	2	5	3	3	2	4	13	19	
	3	7	3	3	2	4	13	15	
	4	25	3	2	1	4	13	13	
	5	26	3	2	1	4	13	10	
	6	27	3	1	1	4	13	8	
30	1	5	3	3	3	5	9	9	
	2	6	2	2	2	5	8	8	
	3	7	2	2	2	5	8	7	
	4	11	2	2	2	5	8	6	
	5	21	2	1	1	5	8	7	
	6	23	2	1	1	5	8	6	
31	1	4	3	1	4	5	28	28	
	2	5	3	1	4	4	25	21	
	3	7	3	1	4	4	19	17	
	4	8	3	1	4	4	18	15	
	5	9	2	1	4	4	13	8	
	6	10	2	1	4	4	12	6	
32	1	2	2	3	5	4	28	23	
	2	3	2	2	4	4	27	22	
	3	9	2	2	4	4	26	22	
	4	21	1	2	4	4	26	19	
	5	22	1	2	4	4	24	18	
	6	23	1	2	4	4	24	17	
33	1	4	3	2	5	4	29	16	
	2	5	3	1	3	3	27	15	
	3	9	3	1	3	3	27	14	
	4	14	3	1	3	2	26	14	
	5	15	3	1	1	2	24	14	
	6	21	3	1	1	2	24	13	
34	1	6	3	5	4	4	16	19	
	2	11	2	5	4	4	15	19	
	3	14	2	5	4	4	14	16	
	4	16	2	5	4	4	14	14	
	5	26	1	5	4	4	13	12	
	6	28	1	5	4	4	13	9	
35	1	9	4	2	2	4	19	16	
	2	15	3	2	1	4	18	14	
	3	23	2	2	1	4	15	12	
	4	24	2	2	1	4	11	11	
	5	27	1	2	1	4	11	8	
	6	28	1	2	1	4	8	6	
36	1	5	5	2	2	4	24	15	
	2	7	4	2	2	4	18	14	
	3	13	4	2	2	4	13	13	
	4	16	4	2	2	3	11	11	
	5	20	4	2	2	2	9	10	
	6	29	4	2	2	2	4	9	
37	1	11	2	3	2	4	18	28	
	2	15	2	3	2	3	16	23	
	3	18	2	3	2	2	14	20	
	4	19	2	3	2	2	9	20	
	5	26	1	3	2	2	6	14	
	6	29	1	3	2	1	6	14	
38	1	2	4	5	5	5	25	27	
	2	3	4	4	4	4	18	26	
	3	9	4	4	4	3	15	26	
	4	13	4	4	4	2	14	23	
	5	22	4	4	3	1	10	22	
	6	25	4	4	3	1	5	22	
39	1	2	1	4	4	4	25	21	
	2	9	1	3	4	3	24	19	
	3	17	1	3	4	3	23	14	
	4	19	1	3	4	3	23	10	
	5	22	1	3	4	2	22	7	
	6	25	1	3	4	2	22	4	
40	1	2	4	4	4	1	28	10	
	2	3	4	4	4	1	27	9	
	3	4	4	4	3	1	27	9	
	4	5	4	4	3	1	26	9	
	5	12	4	4	3	1	25	9	
	6	17	4	4	2	1	23	9	
41	1	4	5	5	4	3	17	25	
	2	10	4	4	4	2	13	24	
	3	14	4	4	4	2	12	24	
	4	15	4	4	4	2	9	24	
	5	19	3	4	4	2	5	24	
	6	28	3	4	4	2	4	24	
42	1	2	3	1	2	2	8	29	
	2	6	2	1	1	2	8	29	
	3	8	2	1	1	2	8	28	
	4	18	1	1	1	2	8	28	
	5	28	1	1	1	2	7	28	
	6	30	1	1	1	2	7	27	
43	1	8	4	2	5	5	18	7	
	2	16	3	1	4	5	15	6	
	3	21	3	1	3	5	11	6	
	4	26	3	1	3	5	8	5	
	5	29	3	1	2	5	7	5	
	6	30	3	1	1	5	3	4	
44	1	4	3	3	4	5	14	21	
	2	13	3	3	4	4	13	20	
	3	16	2	3	4	4	13	19	
	4	22	2	3	4	3	13	18	
	5	27	2	2	4	2	13	16	
	6	30	1	2	4	2	13	16	
45	1	1	1	4	5	5	29	17	
	2	8	1	4	4	4	26	14	
	3	14	1	4	4	3	21	12	
	4	19	1	4	4	3	17	10	
	5	21	1	4	3	2	12	8	
	6	30	1	4	3	1	9	5	
46	1	6	1	3	4	5	14	5	
	2	8	1	3	3	4	14	5	
	3	9	1	2	3	4	13	5	
	4	13	1	2	3	3	13	5	
	5	14	1	1	2	2	13	5	
	6	28	1	1	2	2	12	5	
47	1	2	4	3	4	5	19	18	
	2	9	3	2	4	4	17	17	
	3	11	3	2	4	4	15	13	
	4	12	3	2	3	4	14	11	
	5	21	3	2	3	4	13	11	
	6	29	3	2	2	4	10	9	
48	1	2	5	3	3	4	26	11	
	2	8	4	3	2	4	25	11	
	3	17	4	3	2	3	24	11	
	4	18	3	3	2	3	23	10	
	5	22	3	3	2	2	22	10	
	6	30	2	3	2	2	22	9	
49	1	5	1	4	4	1	25	20	
	2	6	1	4	4	1	24	19	
	3	13	1	4	4	1	24	18	
	4	23	1	3	3	1	24	19	
	5	29	1	3	3	1	24	18	
	6	30	1	3	2	1	24	19	
50	1	2	5	4	4	5	26	20	
	2	8	4	4	4	4	24	16	
	3	9	4	4	4	4	17	16	
	4	19	4	4	4	3	17	12	
	5	25	4	3	4	3	10	10	
	6	30	4	3	4	3	9	8	
51	1	3	5	4	1	4	23	16	
	2	4	4	4	1	3	20	15	
	3	6	4	3	1	3	20	14	
	4	11	4	3	1	3	17	13	
	5	18	3	2	1	3	16	13	
	6	22	3	2	1	3	16	12	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	17	20	20	20	700	719

************************************************************************
