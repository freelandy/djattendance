jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	14		2 3 4 5 6 7 8 10 11 12 13 16 20 23 
2	9	8		35 31 30 26 22 21 18 17 
3	9	3		22 14 9 
4	9	7		30 27 26 22 21 18 15 
5	9	7		50 35 31 27 22 21 19 
6	9	7		51 35 31 26 24 18 17 
7	9	7		51 35 28 26 25 22 17 
8	9	6		35 30 26 24 21 17 
9	9	6		34 30 27 26 24 18 
10	9	6		51 35 34 27 24 18 
11	9	5		36 30 24 21 18 
12	9	4		28 25 24 17 
13	9	10		51 50 39 36 35 34 33 32 30 29 
14	9	9		51 50 37 36 35 34 32 31 29 
15	9	6		51 39 35 34 32 24 
16	9	5		39 34 26 25 24 
17	9	7		50 39 37 34 32 29 27 
18	9	6		50 39 33 29 28 25 
19	9	5		51 36 29 26 25 
20	9	9		51 50 49 46 39 38 36 33 28 
21	9	6		51 39 38 34 33 28 
22	9	3		36 34 24 
23	9	6		49 48 46 38 33 28 
24	9	5		48 47 37 33 29 
25	9	7		48 46 43 41 38 37 32 
26	9	7		49 48 46 44 43 33 32 
27	9	6		49 48 43 42 38 36 
28	9	5		44 43 41 37 32 
29	9	7		49 46 43 42 41 40 38 
30	9	6		49 47 46 42 40 37 
31	9	4		43 42 41 39 
32	9	3		47 42 40 
33	9	3		45 41 40 
34	9	3		48 46 43 
35	9	3		44 42 41 
36	9	2		41 40 
37	9	1		45 
38	9	1		44 
39	9	1		40 
40	9	1		52 
41	9	1		52 
42	9	1		52 
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
2	1	5	4	3	18	24	
	2	7	3	3	17	23	
	3	12	3	3	16	23	
	4	13	3	3	16	22	
	5	14	3	3	15	21	
	6	15	3	3	15	20	
	7	19	3	3	15	19	
	8	21	3	3	14	20	
	9	28	3	3	14	19	
3	1	2	3	4	30	2	
	2	8	2	4	27	2	
	3	9	2	4	26	2	
	4	10	2	4	25	2	
	5	11	2	4	22	2	
	6	14	1	4	21	2	
	7	16	1	4	20	2	
	8	17	1	4	19	2	
	9	28	1	4	17	2	
4	1	2	4	5	25	20	
	2	3	4	4	22	16	
	3	6	3	4	22	16	
	4	7	3	4	19	14	
	5	8	3	4	18	11	
	6	12	2	4	17	8	
	7	24	1	4	17	6	
	8	26	1	4	14	5	
	9	30	1	4	13	2	
5	1	4	5	2	24	26	
	2	6	4	1	24	24	
	3	10	4	1	21	22	
	4	13	4	1	21	21	
	5	14	3	1	17	21	
	6	19	3	1	17	19	
	7	20	3	1	16	18	
	8	21	3	1	13	17	
	9	23	3	1	12	16	
6	1	6	5	4	26	12	
	2	16	4	4	24	10	
	3	17	3	4	23	9	
	4	19	3	4	21	7	
	5	20	3	4	19	7	
	6	21	2	4	17	5	
	7	24	2	4	16	5	
	8	26	1	4	12	4	
	9	27	1	4	12	3	
7	1	1	4	1	25	7	
	2	5	4	1	23	7	
	3	12	4	1	20	7	
	4	13	4	1	19	7	
	5	18	4	1	16	7	
	6	25	3	1	15	7	
	7	26	3	1	13	7	
	8	27	3	1	8	7	
	9	28	3	1	6	7	
8	1	3	3	5	19	13	
	2	4	3	4	18	13	
	3	11	3	4	17	12	
	4	12	3	4	15	11	
	5	13	3	3	11	9	
	6	18	3	3	11	8	
	7	23	3	3	9	7	
	8	26	3	3	6	6	
	9	28	3	3	5	6	
9	1	2	4	2	16	7	
	2	5	3	2	14	7	
	3	18	3	2	13	7	
	4	22	3	2	11	7	
	5	23	3	2	9	7	
	6	26	2	1	7	7	
	7	28	2	1	6	7	
	8	29	2	1	4	7	
	9	30	2	1	1	7	
10	1	1	2	4	26	28	
	2	6	1	4	26	27	
	3	7	1	4	26	26	
	4	8	1	3	26	25	
	5	11	1	3	26	22	
	6	13	1	3	26	21	
	7	25	1	2	26	20	
	8	27	1	2	26	19	
	9	28	1	2	26	18	
11	1	1	1	3	14	23	
	2	2	1	3	13	23	
	3	14	1	3	12	23	
	4	17	1	3	11	24	
	5	18	1	3	11	23	
	6	19	1	3	10	23	
	7	22	1	3	9	23	
	8	24	1	3	9	22	
	9	26	1	3	8	23	
12	1	3	4	4	3	23	
	2	4	4	4	2	23	
	3	11	4	3	2	22	
	4	18	3	3	2	22	
	5	19	3	3	2	21	
	6	24	3	2	2	21	
	7	25	3	2	2	20	
	8	27	2	1	2	20	
	9	30	2	1	2	19	
13	1	3	4	4	23	20	
	2	4	4	3	21	16	
	3	5	4	3	20	16	
	4	10	3	2	15	13	
	5	11	3	2	13	11	
	6	14	3	2	11	8	
	7	16	2	1	8	7	
	8	22	2	1	6	5	
	9	29	2	1	5	4	
14	1	2	4	3	21	25	
	2	11	4	3	19	25	
	3	13	4	3	19	21	
	4	14	4	3	18	19	
	5	18	4	3	17	15	
	6	19	3	2	15	14	
	7	21	3	2	14	12	
	8	22	3	2	13	10	
	9	23	3	2	13	8	
15	1	6	3	3	29	16	
	2	12	2	3	27	15	
	3	14	2	3	25	15	
	4	21	2	2	24	14	
	5	22	2	2	21	14	
	6	24	1	2	20	13	
	7	25	1	1	18	13	
	8	27	1	1	16	12	
	9	28	1	1	15	12	
16	1	6	5	4	25	16	
	2	8	4	3	23	14	
	3	10	4	3	20	12	
	4	11	3	2	18	12	
	5	14	2	2	17	9	
	6	20	2	2	14	9	
	7	21	1	2	12	6	
	8	23	1	1	12	6	
	9	24	1	1	9	3	
17	1	2	5	4	15	19	
	2	5	4	4	14	18	
	3	8	4	4	13	15	
	4	18	3	3	13	15	
	5	20	3	2	12	12	
	6	21	2	2	10	11	
	7	22	2	2	9	8	
	8	24	1	1	8	6	
	9	28	1	1	8	5	
18	1	7	5	4	16	5	
	2	8	4	4	15	4	
	3	10	4	4	13	4	
	4	11	4	3	13	3	
	5	16	4	2	10	3	
	6	20	3	2	9	3	
	7	22	3	2	8	3	
	8	29	3	1	7	2	
	9	30	3	1	5	2	
19	1	1	5	4	30	9	
	2	4	5	3	26	9	
	3	9	5	3	23	9	
	4	12	5	3	18	9	
	5	20	5	2	14	9	
	6	21	5	2	12	9	
	7	23	5	2	8	9	
	8	24	5	2	5	9	
	9	25	5	2	2	9	
20	1	6	1	3	24	26	
	2	7	1	3	18	24	
	3	8	1	3	17	23	
	4	10	1	3	13	23	
	5	13	1	2	11	22	
	6	19	1	2	11	21	
	7	22	1	2	6	21	
	8	24	1	2	5	19	
	9	28	1	2	2	19	
21	1	3	1	5	27	29	
	2	4	1	5	25	29	
	3	6	1	5	23	28	
	4	7	1	5	21	27	
	5	8	1	5	19	27	
	6	23	1	5	17	27	
	7	24	1	5	13	26	
	8	26	1	5	12	25	
	9	27	1	5	11	25	
22	1	5	4	4	16	20	
	2	11	4	3	16	20	
	3	13	3	3	16	17	
	4	15	3	3	16	15	
	5	21	3	2	15	12	
	6	23	2	2	15	12	
	7	24	2	1	15	10	
	8	25	1	1	15	6	
	9	27	1	1	15	5	
23	1	1	1	3	30	27	
	2	7	1	2	29	24	
	3	8	1	2	29	20	
	4	9	1	2	29	18	
	5	10	1	1	29	15	
	6	15	1	1	29	10	
	7	21	1	1	29	7	
	8	28	1	1	29	6	
	9	29	1	1	29	3	
24	1	4	5	2	14	20	
	2	12	4	2	12	20	
	3	14	4	2	12	18	
	4	18	3	2	11	15	
	5	22	3	2	10	14	
	6	25	3	2	9	11	
	7	26	3	2	9	10	
	8	27	2	2	8	6	
	9	29	2	2	7	6	
25	1	2	2	3	19	19	
	2	5	1	3	18	19	
	3	6	1	3	17	18	
	4	7	1	3	16	17	
	5	13	1	2	14	17	
	6	17	1	2	13	16	
	7	18	1	2	11	16	
	8	29	1	2	10	16	
	9	30	1	2	9	15	
26	1	1	4	4	29	17	
	2	2	3	3	24	17	
	3	5	3	3	21	15	
	4	10	3	3	18	14	
	5	11	3	3	16	13	
	6	12	3	2	13	13	
	7	27	3	2	11	12	
	8	28	3	2	10	11	
	9	29	3	2	6	9	
27	1	2	2	5	27	16	
	2	3	2	4	27	15	
	3	13	2	4	27	14	
	4	14	2	3	27	15	
	5	15	2	3	27	14	
	6	16	2	3	26	15	
	7	18	2	2	26	15	
	8	22	2	2	26	14	
	9	30	2	2	26	13	
28	1	4	3	5	18	10	
	2	5	3	5	18	9	
	3	7	3	5	16	8	
	4	11	2	5	16	8	
	5	12	2	5	14	7	
	6	15	2	5	13	6	
	7	18	1	5	12	5	
	8	21	1	5	10	4	
	9	30	1	5	9	4	
29	1	6	3	2	15	28	
	2	7	3	2	14	26	
	3	8	3	2	14	25	
	4	13	3	2	14	24	
	5	22	2	2	13	24	
	6	23	2	2	13	21	
	7	24	1	2	13	21	
	8	25	1	2	13	20	
	9	28	1	2	13	19	
30	1	3	4	1	27	25	
	2	4	4	1	21	23	
	3	9	4	1	19	21	
	4	11	4	1	17	18	
	5	19	3	1	14	17	
	6	20	3	1	13	15	
	7	21	2	1	11	13	
	8	24	2	1	8	9	
	9	30	2	1	5	7	
31	1	1	3	4	6	23	
	2	2	3	4	4	23	
	3	8	3	4	4	21	
	4	14	3	4	3	20	
	5	15	3	4	3	19	
	6	18	2	4	2	19	
	7	20	2	4	2	18	
	8	21	2	4	2	17	
	9	23	2	4	1	17	
32	1	8	4	3	17	26	
	2	10	4	3	15	25	
	3	11	4	3	15	24	
	4	16	4	3	14	25	
	5	18	3	3	13	25	
	6	19	3	3	11	25	
	7	20	3	3	11	24	
	8	21	3	3	10	25	
	9	30	3	3	8	25	
33	1	1	4	5	13	21	
	2	5	3	4	11	21	
	3	14	3	4	11	20	
	4	16	3	4	10	21	
	5	20	3	3	9	21	
	6	22	3	3	8	21	
	7	23	3	3	7	21	
	8	24	3	3	6	21	
	9	29	3	3	6	20	
34	1	5	5	2	24	11	
	2	6	4	1	24	10	
	3	13	4	1	23	10	
	4	15	4	1	21	10	
	5	23	4	1	21	9	
	6	25	4	1	20	9	
	7	26	4	1	19	9	
	8	27	4	1	17	9	
	9	29	4	1	17	8	
35	1	1	2	3	22	26	
	2	6	2	3	20	23	
	3	8	2	3	20	20	
	4	12	2	3	18	18	
	5	15	2	3	16	15	
	6	17	2	3	15	15	
	7	25	2	3	12	10	
	8	26	2	3	12	9	
	9	28	2	3	11	7	
36	1	7	4	3	5	25	
	2	8	4	3	4	24	
	3	15	4	3	4	23	
	4	17	4	3	4	22	
	5	21	4	3	3	24	
	6	22	4	3	3	23	
	7	27	4	3	3	22	
	8	28	4	3	3	21	
	9	30	4	3	3	20	
37	1	3	1	3	17	24	
	2	4	1	3	16	24	
	3	9	1	3	16	22	
	4	10	1	3	14	22	
	5	11	1	3	14	21	
	6	14	1	3	13	19	
	7	25	1	3	11	19	
	8	27	1	3	11	17	
	9	29	1	3	10	17	
38	1	4	3	3	12	25	
	2	7	2	2	12	23	
	3	15	2	2	11	22	
	4	16	2	2	10	19	
	5	24	2	2	10	17	
	6	25	2	2	9	14	
	7	26	2	2	9	13	
	8	27	2	2	9	11	
	9	29	2	2	8	10	
39	1	8	5	3	27	20	
	2	10	4	2	26	18	
	3	11	4	2	25	17	
	4	15	4	2	25	15	
	5	16	4	2	23	13	
	6	20	4	1	22	11	
	7	28	4	1	21	9	
	8	29	4	1	20	8	
	9	30	4	1	18	7	
40	1	4	3	5	24	19	
	2	9	3	4	22	17	
	3	10	3	4	19	15	
	4	16	3	3	18	12	
	5	18	3	3	16	10	
	6	20	3	3	15	8	
	7	22	3	2	13	8	
	8	27	3	2	10	6	
	9	30	3	2	8	4	
41	1	1	4	2	25	26	
	2	2	3	2	23	24	
	3	5	3	2	22	23	
	4	15	3	2	18	23	
	5	16	2	2	15	22	
	6	21	2	2	13	21	
	7	22	2	2	12	21	
	8	23	2	2	8	20	
	9	28	2	2	6	19	
42	1	8	3	4	22	22	
	2	11	3	3	20	18	
	3	13	3	3	19	17	
	4	19	3	3	15	13	
	5	20	3	2	15	13	
	6	21	3	2	11	9	
	7	22	3	2	9	7	
	8	23	3	1	9	5	
	9	29	3	1	7	2	
43	1	6	1	2	29	5	
	2	10	1	2	25	5	
	3	11	1	2	20	5	
	4	13	1	2	20	4	
	5	14	1	2	13	5	
	6	15	1	2	10	4	
	7	16	1	2	10	3	
	8	17	1	2	6	4	
	9	26	1	2	2	4	
44	1	2	4	5	24	11	
	2	5	4	5	22	11	
	3	6	4	5	21	11	
	4	7	4	5	20	10	
	5	8	4	5	19	10	
	6	11	4	5	18	10	
	7	13	4	5	17	10	
	8	18	4	5	15	9	
	9	26	4	5	14	9	
45	1	7	3	4	22	21	
	2	10	3	4	18	21	
	3	12	3	4	15	21	
	4	13	3	4	14	20	
	5	16	2	4	10	20	
	6	21	2	3	10	20	
	7	22	2	3	8	19	
	8	29	2	3	4	19	
	9	30	2	3	2	19	
46	1	4	1	1	16	15	
	2	13	1	1	16	14	
	3	14	1	1	16	13	
	4	15	1	1	16	12	
	5	16	1	1	15	12	
	6	19	1	1	15	11	
	7	21	1	1	15	10	
	8	26	1	1	15	9	
	9	27	1	1	15	8	
47	1	2	5	1	28	20	
	2	5	4	1	27	19	
	3	8	4	1	27	16	
	4	19	3	1	27	14	
	5	20	3	1	26	12	
	6	21	3	1	25	10	
	7	23	3	1	24	9	
	8	25	2	1	24	7	
	9	29	2	1	23	4	
48	1	3	5	3	22	24	
	2	4	4	2	19	24	
	3	5	4	2	17	22	
	4	10	3	2	14	21	
	5	19	3	2	12	19	
	6	21	3	1	10	18	
	7	27	3	1	10	17	
	8	28	2	1	6	17	
	9	29	2	1	6	16	
49	1	1	4	4	28	27	
	2	2	3	4	26	26	
	3	8	3	4	25	26	
	4	9	3	3	25	26	
	5	10	3	2	23	26	
	6	11	2	2	22	26	
	7	18	2	1	21	26	
	8	19	2	1	19	26	
	9	27	2	1	19	25	
50	1	3	2	5	23	19	
	2	4	2	4	23	18	
	3	9	2	4	21	16	
	4	10	2	4	19	12	
	5	17	2	3	19	11	
	6	20	2	3	18	9	
	7	24	2	2	15	7	
	8	27	2	2	15	6	
	9	29	2	2	13	4	
51	1	1	5	2	22	8	
	2	3	5	2	21	8	
	3	14	5	2	17	7	
	4	15	5	2	14	6	
	5	16	5	2	14	5	
	6	17	5	2	10	5	
	7	18	5	2	6	4	
	8	23	5	2	5	3	
	9	26	5	2	4	3	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	35	38	782	750

************************************************************************
