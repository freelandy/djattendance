jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 7 9 10 11 14 
2	9	6		28 21 20 18 16 6 
3	9	5		30 26 21 12 8 
4	9	7		26 22 19 18 17 15 12 
5	9	6		51 26 24 22 16 12 
6	9	5		24 23 22 15 13 
7	9	6		36 31 24 23 21 20 
8	9	5		31 28 24 22 15 
9	9	5		26 25 24 22 18 
10	9	5		49 31 25 24 15 
11	9	3		51 27 12 
12	9	7		50 49 36 33 31 29 25 
13	9	6		50 48 33 31 30 25 
14	9	6		51 38 34 29 28 27 
15	9	8		51 50 46 36 34 33 32 29 
16	9	6		48 35 34 33 32 27 
17	9	5		49 48 36 31 25 
18	9	8		51 50 48 44 35 33 32 31 
19	9	8		51 49 48 36 35 33 32 31 
20	9	4		51 46 29 25 
21	9	4		50 48 46 25 
22	9	8		49 48 47 46 44 41 35 32 
23	9	7		49 47 46 41 35 34 32 
24	9	5		50 46 44 33 29 
25	9	5		47 41 35 34 32 
26	9	8		48 46 44 43 42 41 37 35 
27	9	4		49 44 43 31 
28	9	9		50 48 46 45 44 43 41 40 39 
29	9	6		48 47 43 41 37 35 
30	9	4		49 42 41 34 
31	9	6		47 46 42 41 39 37 
32	9	4		43 39 38 37 
33	9	4		42 41 40 39 
34	9	3		44 39 37 
35	9	3		45 40 39 
36	9	2		43 39 
37	9	1		40 
38	9	1		42 
39	9	1		52 
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
2	1	6	3	5	11	27	
	2	7	2	4	10	27	
	3	8	2	4	10	25	
	4	9	2	4	10	23	
	5	11	2	3	9	20	
	6	15	2	3	9	19	
	7	17	2	3	8	17	
	8	18	2	3	8	15	
	9	21	2	3	8	12	
3	1	11	5	4	27	28	
	2	14	4	3	25	28	
	3	15	4	3	24	26	
	4	16	4	3	23	25	
	5	20	4	2	20	22	
	6	27	4	2	19	22	
	7	28	4	1	16	19	
	8	29	4	1	14	19	
	9	30	4	1	14	17	
4	1	6	3	4	25	24	
	2	7	3	4	25	23	
	3	9	3	4	23	22	
	4	12	3	4	22	21	
	5	14	3	4	20	19	
	6	20	3	4	20	18	
	7	21	3	4	18	17	
	8	24	3	4	17	17	
	9	26	3	4	17	15	
5	1	1	1	1	20	8	
	2	8	1	1	19	7	
	3	9	1	1	19	6	
	4	10	1	1	19	5	
	5	11	1	1	19	4	
	6	17	1	1	18	5	
	7	22	1	1	18	4	
	8	29	1	1	18	3	
	9	30	1	1	18	2	
6	1	7	5	4	30	21	
	2	8	5	4	29	21	
	3	9	5	4	29	20	
	4	13	5	4	29	19	
	5	16	5	4	29	18	
	6	21	5	3	28	19	
	7	26	5	3	28	18	
	8	27	5	3	28	17	
	9	30	5	3	28	16	
7	1	7	5	2	30	8	
	2	8	4	2	28	7	
	3	13	4	2	25	6	
	4	14	3	2	24	6	
	5	15	3	2	21	5	
	6	21	3	2	20	5	
	7	22	3	2	16	4	
	8	26	2	2	15	4	
	9	30	2	2	13	4	
8	1	9	3	2	26	16	
	2	10	3	2	24	16	
	3	18	3	2	23	15	
	4	24	3	2	21	14	
	5	26	3	2	20	13	
	6	27	3	2	19	13	
	7	28	3	2	19	12	
	8	29	3	2	18	11	
	9	30	3	2	16	10	
9	1	2	4	5	14	28	
	2	3	4	4	13	28	
	3	6	4	4	11	27	
	4	13	4	4	10	25	
	5	19	3	4	9	25	
	6	24	3	3	8	24	
	7	25	3	3	8	23	
	8	28	3	3	7	21	
	9	30	3	3	6	21	
10	1	8	4	2	27	15	
	2	9	4	2	26	14	
	3	11	4	2	23	12	
	4	14	4	2	21	11	
	5	15	4	2	20	10	
	6	16	3	2	17	10	
	7	19	3	2	16	9	
	8	22	3	2	14	7	
	9	27	3	2	10	6	
11	1	4	4	4	28	19	
	2	5	4	4	27	18	
	3	6	4	4	26	18	
	4	11	4	4	23	18	
	5	14	3	4	22	17	
	6	15	3	4	22	16	
	7	22	3	4	20	16	
	8	28	2	4	19	14	
	9	29	2	4	18	14	
12	1	3	2	1	29	23	
	2	5	2	1	24	21	
	3	15	2	1	22	19	
	4	16	2	1	19	17	
	5	17	2	1	16	17	
	6	19	2	1	11	15	
	7	21	2	1	7	14	
	8	22	2	1	5	11	
	9	25	2	1	4	11	
13	1	2	4	5	19	4	
	2	10	4	4	18	3	
	3	13	3	4	18	3	
	4	14	3	3	17	3	
	5	19	2	3	17	3	
	6	22	2	3	16	3	
	7	23	1	2	15	3	
	8	28	1	2	15	2	
	9	29	1	2	15	1	
14	1	6	4	1	28	20	
	2	13	4	1	27	20	
	3	15	4	1	27	19	
	4	18	4	1	27	17	
	5	21	3	1	26	15	
	6	23	3	1	26	14	
	7	25	3	1	26	13	
	8	26	2	1	26	11	
	9	27	2	1	26	10	
15	1	1	2	3	28	25	
	2	2	2	3	27	20	
	3	6	2	3	27	19	
	4	9	2	3	26	16	
	5	23	2	3	25	14	
	6	24	2	3	24	10	
	7	25	2	3	22	8	
	8	26	2	3	21	7	
	9	27	2	3	20	5	
16	1	3	3	4	28	12	
	2	7	3	3	27	12	
	3	8	3	3	27	10	
	4	15	2	3	27	9	
	5	17	2	2	27	8	
	6	18	2	2	27	7	
	7	24	1	2	27	7	
	8	27	1	1	27	5	
	9	29	1	1	27	4	
17	1	1	3	5	11	22	
	2	3	3	4	10	20	
	3	4	3	4	10	18	
	4	5	3	4	9	15	
	5	11	2	3	9	14	
	6	16	2	3	8	14	
	7	25	2	2	8	11	
	8	27	2	2	7	9	
	9	28	2	2	7	8	
18	1	7	2	1	28	30	
	2	13	2	1	28	29	
	3	14	2	1	28	28	
	4	15	2	1	28	27	
	5	15	2	1	27	31	
	6	16	2	1	27	30	
	7	19	2	1	27	29	
	8	29	2	1	27	28	
	9	30	2	1	27	27	
19	1	2	1	4	26	23	
	2	7	1	4	25	22	
	3	9	1	4	24	20	
	4	11	1	4	22	19	
	5	13	1	3	19	15	
	6	15	1	3	17	13	
	7	18	1	3	15	12	
	8	22	1	3	14	10	
	9	28	1	3	12	7	
20	1	6	5	5	4	20	
	2	10	4	4	3	19	
	3	12	3	3	3	16	
	4	13	3	3	3	15	
	5	14	3	2	2	11	
	6	19	2	2	2	9	
	7	20	1	1	2	8	
	8	21	1	1	1	5	
	9	22	1	1	1	4	
21	1	6	5	5	27	17	
	2	7	4	4	25	15	
	3	8	4	3	20	12	
	4	9	4	3	19	12	
	5	15	3	3	16	9	
	6	18	3	2	11	6	
	7	19	3	2	10	6	
	8	26	2	1	5	2	
	9	29	2	1	4	2	
22	1	3	5	4	27	28	
	2	5	4	3	27	28	
	3	11	4	3	26	26	
	4	14	4	3	25	25	
	5	15	4	3	23	23	
	6	16	4	3	23	22	
	7	24	4	3	21	21	
	8	25	4	3	20	21	
	9	30	4	3	20	19	
23	1	7	1	1	26	24	
	2	8	1	1	25	22	
	3	14	1	1	24	22	
	4	20	1	1	22	22	
	5	21	1	1	22	21	
	6	22	1	1	21	20	
	7	27	1	1	20	20	
	8	28	1	1	20	19	
	9	29	1	1	19	18	
24	1	11	3	3	20	18	
	2	15	3	2	18	17	
	3	16	3	2	18	16	
	4	21	3	2	17	17	
	5	22	3	2	17	16	
	6	23	3	1	16	16	
	7	25	3	1	16	15	
	8	28	3	1	14	14	
	9	30	3	1	14	13	
25	1	1	4	3	14	28	
	2	2	3	2	13	23	
	3	4	3	2	11	22	
	4	5	2	2	10	19	
	5	13	2	2	9	15	
	6	18	2	2	8	13	
	7	19	2	2	7	9	
	8	26	1	2	7	5	
	9	29	1	2	6	3	
26	1	9	2	4	12	27	
	2	13	2	4	11	25	
	3	14	2	4	10	25	
	4	15	2	4	8	24	
	5	16	1	4	6	22	
	6	18	1	4	6	21	
	7	21	1	4	4	20	
	8	24	1	4	3	19	
	9	25	1	4	3	18	
27	1	3	4	2	28	26	
	2	4	4	1	28	26	
	3	5	4	1	27	24	
	4	6	3	1	26	24	
	5	8	3	1	25	22	
	6	17	2	1	24	21	
	7	22	1	1	24	20	
	8	29	1	1	22	19	
	9	30	1	1	22	18	
28	1	7	3	2	22	29	
	2	9	2	2	20	26	
	3	16	2	2	20	22	
	4	17	2	2	18	18	
	5	18	1	2	15	17	
	6	19	1	2	13	15	
	7	22	1	2	10	13	
	8	28	1	2	8	7	
	9	29	1	2	6	6	
29	1	1	5	3	30	14	
	2	5	4	3	26	13	
	3	7	4	3	22	13	
	4	10	3	3	22	13	
	5	21	3	3	17	13	
	6	22	3	3	14	13	
	7	24	3	3	14	12	
	8	25	2	3	12	13	
	9	27	2	3	9	13	
30	1	2	2	4	18	16	
	2	3	2	3	18	13	
	3	4	2	3	17	13	
	4	8	2	3	16	11	
	5	12	2	3	15	10	
	6	15	2	2	15	8	
	7	19	2	2	14	7	
	8	20	2	2	14	5	
	9	27	2	2	13	5	
31	1	1	3	4	17	2	
	2	11	2	4	15	1	
	3	16	2	3	14	2	
	4	17	2	3	14	1	
	5	20	2	3	13	1	
	6	21	2	2	12	1	
	7	26	2	2	11	1	
	8	29	2	1	9	2	
	9	30	2	1	9	1	
32	1	1	1	2	19	29	
	2	6	1	1	17	24	
	3	10	1	1	17	21	
	4	21	1	1	16	17	
	5	23	1	1	16	16	
	6	27	1	1	15	13	
	7	28	1	1	15	10	
	8	29	1	1	15	6	
	9	30	1	1	14	3	
33	1	2	3	4	25	25	
	2	5	2	4	22	22	
	3	14	2	4	21	20	
	4	20	2	4	20	18	
	5	22	1	4	19	17	
	6	23	1	3	17	17	
	7	24	1	3	16	15	
	8	29	1	3	15	13	
	9	30	1	3	13	11	
34	1	3	4	1	25	16	
	2	4	4	1	24	15	
	3	5	4	1	19	15	
	4	6	4	1	16	15	
	5	19	4	1	16	14	
	6	20	3	1	12	14	
	7	21	3	1	10	14	
	8	24	3	1	6	14	
	9	29	3	1	2	14	
35	1	2	2	5	22	18	
	2	3	2	4	21	16	
	3	4	2	4	21	15	
	4	5	2	4	20	14	
	5	13	1	4	20	12	
	6	15	1	4	20	10	
	7	18	1	4	19	8	
	8	21	1	4	18	8	
	9	25	1	4	18	6	
36	1	1	2	4	30	27	
	2	2	1	3	29	26	
	3	4	1	3	28	23	
	4	13	1	3	28	20	
	5	15	1	3	28	17	
	6	16	1	3	27	17	
	7	17	1	3	27	13	
	8	25	1	3	26	11	
	9	27	1	3	26	10	
37	1	3	3	1	22	16	
	2	7	3	1	21	16	
	3	8	3	1	21	15	
	4	16	2	1	20	14	
	5	18	2	1	19	13	
	6	19	2	1	18	13	
	7	21	2	1	18	12	
	8	24	1	1	16	12	
	9	27	1	1	16	11	
38	1	12	3	5	17	27	
	2	13	3	4	14	26	
	3	14	3	4	12	24	
	4	19	3	3	11	22	
	5	20	3	3	9	21	
	6	21	3	3	9	18	
	7	23	3	2	6	17	
	8	25	3	2	4	15	
	9	27	3	2	4	14	
39	1	12	4	2	26	18	
	2	13	3	2	23	15	
	3	15	3	2	22	14	
	4	18	2	2	20	13	
	5	22	2	2	16	13	
	6	23	2	1	14	12	
	7	24	1	1	11	10	
	8	26	1	1	11	9	
	9	27	1	1	7	9	
40	1	4	4	3	23	10	
	2	7	4	2	22	9	
	3	8	4	2	21	9	
	4	9	4	2	20	8	
	5	10	4	2	19	7	
	6	16	4	2	18	7	
	7	17	4	2	17	7	
	8	26	4	2	15	6	
	9	30	4	2	15	5	
41	1	3	3	2	27	23	
	2	4	2	1	24	22	
	3	5	2	1	22	21	
	4	6	2	1	20	19	
	5	16	2	1	20	18	
	6	17	2	1	19	17	
	7	19	2	1	17	16	
	8	25	2	1	14	15	
	9	28	2	1	14	14	
42	1	12	2	4	26	8	
	2	14	1	3	25	8	
	3	18	1	3	23	8	
	4	20	1	3	23	7	
	5	21	1	3	21	7	
	6	22	1	3	20	7	
	7	23	1	3	19	7	
	8	25	1	3	19	6	
	9	30	1	3	17	6	
43	1	1	3	4	24	25	
	2	3	3	3	23	25	
	3	9	3	3	21	21	
	4	10	2	3	18	21	
	5	11	2	2	16	19	
	6	14	2	2	13	14	
	7	16	2	2	12	12	
	8	27	1	2	10	12	
	9	29	1	2	8	9	
44	1	4	4	5	16	9	
	2	12	3	4	16	7	
	3	13	3	4	16	6	
	4	17	3	4	16	5	
	5	18	2	4	16	5	
	6	22	2	4	15	5	
	7	24	1	4	15	4	
	8	25	1	4	15	3	
	9	26	1	4	15	2	
45	1	4	5	3	16	20	
	2	5	4	3	15	20	
	3	9	4	3	14	20	
	4	11	4	3	12	19	
	5	15	4	3	11	19	
	6	19	4	2	11	19	
	7	20	4	2	10	18	
	8	23	4	2	9	18	
	9	24	4	2	7	18	
46	1	5	3	1	7	17	
	2	9	3	1	6	17	
	3	10	3	1	6	16	
	4	13	3	1	6	15	
	5	15	3	1	6	14	
	6	19	3	1	5	15	
	7	24	3	1	5	14	
	8	25	3	1	5	13	
	9	26	3	1	5	12	
47	1	4	5	5	16	28	
	2	9	5	5	14	27	
	3	12	5	5	12	27	
	4	14	5	5	11	27	
	5	18	5	5	8	27	
	6	20	5	5	8	26	
	7	23	5	5	5	27	
	8	27	5	5	4	27	
	9	30	5	5	3	27	
48	1	2	4	2	10	17	
	2	4	4	1	8	14	
	3	5	4	1	7	13	
	4	9	4	1	7	12	
	5	11	4	1	6	10	
	6	15	4	1	5	7	
	7	24	4	1	4	5	
	8	25	4	1	3	3	
	9	29	4	1	1	2	
49	1	9	5	4	21	24	
	2	10	4	4	21	24	
	3	11	4	3	20	22	
	4	18	4	3	20	21	
	5	22	4	2	20	21	
	6	23	4	2	19	20	
	7	27	4	1	18	19	
	8	28	4	1	18	18	
	9	29	4	1	18	17	
50	1	2	3	4	23	27	
	2	9	3	3	21	26	
	3	11	3	3	19	25	
	4	14	3	3	15	23	
	5	16	3	3	15	22	
	6	20	2	3	11	21	
	7	21	2	3	9	21	
	8	22	2	3	7	20	
	9	25	2	3	7	19	
51	1	4	4	4	27	29	
	2	6	4	3	22	24	
	3	8	4	3	21	19	
	4	11	3	3	20	17	
	5	17	3	2	16	13	
	6	18	2	2	14	11	
	7	20	2	1	11	10	
	8	23	1	1	10	4	
	9	27	1	1	8	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	29	31	866	780

************************************************************************
