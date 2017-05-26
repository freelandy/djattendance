jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	3		2 3 5 
2	9	5		14 12 8 7 4 
3	9	4		14 11 8 6 
4	9	4		15 11 9 6 
5	9	5		23 19 16 13 11 
6	9	4		19 18 17 10 
7	9	5		23 19 17 16 15 
8	9	4		23 19 16 15 
9	9	5		28 22 18 17 16 
10	9	4		23 21 16 13 
11	9	5		28 22 20 18 17 
12	9	4		28 23 20 17 
13	9	5		28 27 24 22 20 
14	9	3		28 22 21 
15	9	2		22 18 
16	9	4		27 25 24 20 
17	9	3		27 25 21 
18	9	2		29 21 
19	9	4		33 29 28 25 
20	9	4		40 30 29 26 
21	9	2		30 24 
22	9	2		29 25 
23	9	6		40 37 35 33 30 29 
24	9	3		40 32 26 
25	9	6		40 36 35 32 31 30 
26	9	6		38 36 35 34 33 31 
27	9	5		40 39 35 34 31 
28	9	6		51 46 42 40 38 36 
29	9	3		42 36 32 
30	9	5		47 43 42 38 34 
31	9	5		51 47 42 41 37 
32	9	5		51 47 43 41 39 
33	9	4		51 47 43 39 
34	9	4		51 46 44 41 
35	9	3		44 43 41 
36	9	2		47 39 
37	9	2		44 43 
38	9	2		44 41 
39	9	2		50 44 
40	9	2		50 44 
41	9	2		50 45 
42	9	1		44 
43	9	2		50 46 
44	9	1		45 
45	9	2		49 48 
46	9	1		48 
47	9	1		48 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	5	4	4	11	29	24	10	
	2	14	4	4	11	28	23	10	
	3	15	4	4	11	27	23	10	
	4	17	4	4	11	27	23	9	
	5	22	4	4	11	26	23	10	
	6	23	4	4	10	26	23	10	
	7	27	4	4	10	26	23	9	
	8	28	4	4	10	25	23	10	
	9	29	4	4	10	25	23	9	
3	1	2	3	5	5	26	16	25	
	2	3	3	5	5	26	14	24	
	3	6	3	5	5	23	12	23	
	4	7	3	5	5	18	12	23	
	5	9	3	5	5	17	11	20	
	6	10	3	5	5	13	8	20	
	7	26	3	5	5	9	8	18	
	8	27	3	5	5	8	7	18	
	9	28	3	5	5	5	5	17	
4	1	3	3	1	22	29	15	12	
	2	4	2	1	20	28	14	12	
	3	9	2	1	20	27	14	10	
	4	10	2	1	19	27	13	8	
	5	16	2	1	17	25	12	8	
	6	18	2	1	17	25	12	6	
	7	19	2	1	15	25	11	3	
	8	22	2	1	14	24	11	3	
	9	25	2	1	13	23	11	2	
5	1	2	3	5	22	9	13	30	
	2	6	2	4	18	8	12	28	
	3	7	2	4	18	7	12	26	
	4	8	2	4	14	6	11	23	
	5	11	2	4	11	6	11	22	
	6	13	2	4	10	6	10	22	
	7	18	2	4	7	5	9	19	
	8	22	2	4	6	5	9	18	
	9	24	2	4	2	4	9	16	
6	1	3	5	3	15	22	26	8	
	2	8	4	3	15	20	26	8	
	3	9	4	3	13	16	22	8	
	4	10	4	3	11	15	22	8	
	5	17	3	3	9	13	19	8	
	6	18	3	3	8	9	18	8	
	7	24	3	3	8	6	17	8	
	8	28	3	3	6	3	13	8	
	9	30	3	3	4	2	12	8	
7	1	7	5	2	27	17	27	23	
	2	8	4	2	25	14	23	21	
	3	10	4	2	23	13	21	20	
	4	11	4	2	21	13	18	19	
	5	15	3	2	21	10	17	16	
	6	17	3	2	19	10	14	13	
	7	19	3	2	18	8	8	11	
	8	21	2	2	16	6	6	11	
	9	30	2	2	15	6	3	8	
8	1	1	5	2	16	3	5	24	
	2	4	4	2	16	3	4	24	
	3	5	4	2	16	3	4	23	
	4	9	4	2	15	3	4	24	
	5	11	3	2	15	3	4	24	
	6	18	3	1	14	3	4	25	
	7	19	3	1	14	3	4	24	
	8	21	2	1	13	3	4	24	
	9	26	2	1	13	3	4	23	
9	1	1	3	3	17	22	27	15	
	2	2	2	3	17	20	26	14	
	3	3	2	3	17	18	24	14	
	4	4	2	3	17	15	24	13	
	5	18	2	3	17	15	23	13	
	6	20	1	3	17	12	23	13	
	7	21	1	3	17	9	21	12	
	8	23	1	3	17	8	21	12	
	9	28	1	3	17	6	20	12	
10	1	5	5	1	16	15	28	17	
	2	12	4	1	14	15	26	16	
	3	13	4	1	11	15	26	16	
	4	14	4	1	9	14	24	16	
	5	17	4	1	9	13	22	16	
	6	20	3	1	7	13	20	16	
	7	25	3	1	5	13	19	16	
	8	26	3	1	3	12	18	16	
	9	28	3	1	1	12	16	16	
11	1	7	5	2	22	15	10	26	
	2	11	4	1	19	12	10	25	
	3	13	4	1	19	10	9	25	
	4	14	4	1	16	9	8	25	
	5	16	3	1	16	9	6	25	
	6	25	3	1	14	6	5	25	
	7	26	3	1	11	5	4	25	
	8	28	3	1	11	3	2	25	
	9	29	3	1	10	2	1	25	
12	1	1	3	4	14	26	8	12	
	2	2	3	3	14	21	7	11	
	3	7	3	3	13	20	6	11	
	4	12	2	2	13	19	4	11	
	5	16	2	2	13	17	4	11	
	6	17	2	2	12	12	3	11	
	7	26	1	1	11	10	3	11	
	8	27	1	1	11	10	1	11	
	9	28	1	1	11	8	1	11	
13	1	3	3	3	22	24	28	29	
	2	4	3	3	20	23	25	28	
	3	9	3	3	20	23	25	27	
	4	13	3	3	19	21	24	28	
	5	15	3	3	19	20	22	27	
	6	20	2	2	19	19	22	27	
	7	24	2	2	18	19	21	27	
	8	26	2	2	18	18	20	27	
	9	27	2	2	17	16	18	27	
14	1	2	3	5	10	19	29	28	
	2	6	3	4	9	18	28	26	
	3	7	3	3	7	18	28	24	
	4	8	3	3	6	17	27	21	
	5	9	3	2	6	17	27	19	
	6	10	3	2	5	17	27	18	
	7	12	3	2	4	17	26	17	
	8	13	3	1	4	16	26	14	
	9	22	3	1	3	16	26	14	
15	1	2	1	1	15	22	27	8	
	2	5	1	1	14	21	26	7	
	3	7	1	1	14	21	23	6	
	4	14	1	1	14	19	21	6	
	5	15	1	1	13	19	19	6	
	6	17	1	1	12	16	19	5	
	7	18	1	1	12	15	15	5	
	8	25	1	1	12	14	15	4	
	9	27	1	1	11	14	11	4	
16	1	3	5	3	28	29	24	24	
	2	4	4	2	25	27	22	24	
	3	14	4	2	23	25	19	24	
	4	15	4	2	22	21	18	23	
	5	16	4	1	17	19	16	23	
	6	17	4	1	15	18	15	22	
	7	19	4	1	14	16	13	22	
	8	26	4	1	12	12	12	21	
	9	29	4	1	9	12	11	21	
17	1	1	4	4	30	19	28	27	
	2	4	3	4	27	18	26	26	
	3	10	3	4	25	16	24	25	
	4	11	3	3	24	14	23	25	
	5	13	3	3	23	12	21	24	
	6	15	3	2	22	9	19	24	
	7	16	3	2	19	8	17	24	
	8	26	3	1	17	6	15	23	
	9	28	3	1	17	4	14	23	
18	1	4	1	4	17	25	21	19	
	2	5	1	4	17	24	20	16	
	3	6	1	4	17	20	20	14	
	4	20	1	4	17	20	20	13	
	5	21	1	4	17	18	19	11	
	6	22	1	4	17	14	18	9	
	7	23	1	4	17	13	18	9	
	8	27	1	4	17	11	17	8	
	9	30	1	4	17	10	16	6	
19	1	6	5	4	14	19	27	27	
	2	8	4	3	12	18	26	24	
	3	9	4	3	10	16	25	21	
	4	10	4	3	10	16	25	18	
	5	17	4	3	9	14	24	18	
	6	21	4	2	7	12	24	12	
	7	24	4	2	5	11	23	10	
	8	26	4	2	5	10	23	9	
	9	28	4	2	3	9	23	6	
20	1	8	5	4	15	19	20	1	
	2	9	4	3	15	19	19	1	
	3	10	4	3	12	16	19	1	
	4	11	4	3	11	14	19	1	
	5	12	4	2	9	11	19	1	
	6	15	4	2	9	10	19	1	
	7	16	4	2	8	8	19	1	
	8	18	4	2	6	5	19	1	
	9	29	4	2	5	4	19	1	
21	1	1	4	1	17	26	8	12	
	2	5	3	1	13	24	6	11	
	3	9	3	1	12	22	6	9	
	4	12	3	1	11	20	4	9	
	5	14	3	1	8	18	4	7	
	6	19	2	1	7	18	3	5	
	7	24	2	1	6	17	2	5	
	8	26	2	1	2	15	1	3	
	9	28	2	1	1	12	1	2	
22	1	6	2	5	22	23	14	28	
	2	10	2	4	20	21	13	26	
	3	12	2	4	17	19	13	26	
	4	16	2	4	17	18	11	24	
	5	17	2	3	14	17	8	22	
	6	18	2	3	11	15	7	21	
	7	19	2	3	10	11	7	19	
	8	23	2	3	7	9	4	18	
	9	25	2	3	5	7	3	17	
23	1	3	3	5	17	15	12	25	
	2	6	3	4	13	14	10	25	
	3	8	3	4	13	14	10	24	
	4	9	3	4	10	14	10	25	
	5	14	3	4	8	13	8	25	
	6	18	3	4	7	13	8	25	
	7	21	3	4	4	13	8	25	
	8	26	3	4	2	13	6	25	
	9	28	3	4	1	13	6	25	
24	1	6	5	5	22	15	22	29	
	2	11	5	4	21	14	21	29	
	3	14	5	4	21	13	20	28	
	4	15	5	4	21	11	20	27	
	5	19	5	3	21	11	18	27	
	6	21	5	3	21	11	18	26	
	7	24	5	3	21	10	17	26	
	8	27	5	2	21	8	17	25	
	9	29	5	2	21	8	16	25	
25	1	6	4	3	23	28	10	27	
	2	10	3	2	20	27	10	27	
	3	13	3	2	19	26	10	26	
	4	15	3	2	18	26	9	25	
	5	18	2	2	17	25	9	22	
	6	20	2	1	16	25	8	21	
	7	27	2	1	16	24	8	20	
	8	28	2	1	15	24	7	19	
	9	29	2	1	13	24	7	18	
26	1	2	4	3	18	21	14	23	
	2	3	4	3	17	19	12	23	
	3	4	4	3	16	19	12	21	
	4	11	4	3	16	18	12	21	
	5	12	4	2	14	16	11	20	
	6	13	4	2	14	15	11	18	
	7	17	4	2	14	15	10	17	
	8	22	4	1	12	13	9	16	
	9	24	4	1	12	13	9	15	
27	1	1	1	4	22	28	12	16	
	2	6	1	3	22	24	12	15	
	3	7	1	3	19	20	10	14	
	4	15	1	2	17	16	10	13	
	5	18	1	2	16	13	8	12	
	6	19	1	2	14	13	6	12	
	7	20	1	1	13	7	4	12	
	8	24	1	1	12	7	3	10	
	9	30	1	1	10	2	3	10	
28	1	1	3	2	22	22	7	27	
	2	2	2	1	21	21	7	24	
	3	5	2	1	20	17	7	23	
	4	6	2	1	19	17	7	21	
	5	9	2	1	15	15	7	21	
	6	21	2	1	14	12	7	20	
	7	22	2	1	14	10	7	17	
	8	24	2	1	10	9	7	16	
	9	25	2	1	9	7	7	14	
29	1	2	4	1	17	22	14	27	
	2	6	4	1	17	22	14	26	
	3	12	4	1	16	21	14	21	
	4	14	4	1	15	19	14	21	
	5	15	4	1	15	19	14	19	
	6	16	4	1	15	18	14	16	
	7	17	4	1	14	17	14	14	
	8	18	4	1	13	15	14	11	
	9	19	4	1	13	15	14	8	
30	1	5	3	2	16	20	3	2	
	2	7	3	2	15	18	3	2	
	3	10	3	2	15	15	3	2	
	4	14	3	2	15	13	3	2	
	5	17	3	2	15	11	3	2	
	6	21	3	2	15	8	3	2	
	7	22	3	2	15	7	3	2	
	8	23	3	2	15	5	3	2	
	9	24	3	2	15	3	3	2	
31	1	3	3	5	28	29	28	11	
	2	4	3	4	24	28	26	11	
	3	5	3	4	23	26	26	10	
	4	7	3	3	19	25	22	10	
	5	10	3	2	17	25	21	9	
	6	21	3	2	14	22	19	9	
	7	22	3	2	14	22	19	8	
	8	23	3	1	12	20	15	7	
	9	24	3	1	8	19	15	7	
32	1	3	3	4	27	27	7	23	
	2	13	3	4	23	23	6	23	
	3	14	3	4	21	20	6	21	
	4	16	3	4	19	18	5	19	
	5	18	3	4	18	15	4	14	
	6	22	2	4	16	15	4	14	
	7	23	2	4	13	13	2	11	
	8	24	2	4	13	11	1	9	
	9	28	2	4	10	7	1	8	
33	1	11	2	2	14	20	21	22	
	2	12	2	2	14	17	18	22	
	3	13	2	2	14	16	17	17	
	4	18	2	2	14	13	13	15	
	5	19	2	2	14	11	13	12	
	6	20	2	2	14	11	9	11	
	7	21	2	2	14	9	6	9	
	8	23	2	2	14	7	6	6	
	9	29	2	2	14	5	4	3	
34	1	2	1	3	22	7	25	26	
	2	3	1	3	20	6	21	24	
	3	7	1	3	18	6	19	24	
	4	17	1	3	15	6	16	24	
	5	20	1	3	13	5	14	22	
	6	21	1	3	10	4	12	22	
	7	22	1	3	9	4	9	21	
	8	23	1	3	8	2	6	20	
	9	28	1	3	4	2	4	20	
35	1	7	4	2	14	20	15	5	
	2	13	3	2	13	20	13	4	
	3	15	3	2	11	17	12	4	
	4	18	2	2	11	16	12	3	
	5	19	2	2	9	14	10	2	
	6	21	2	2	8	12	8	2	
	7	24	2	2	7	8	7	2	
	8	27	1	2	5	8	3	1	
	9	30	1	2	5	5	2	1	
36	1	2	3	3	15	10	28	17	
	2	3	2	2	13	10	28	14	
	3	5	2	2	11	10	27	13	
	4	11	2	2	11	10	25	11	
	5	12	2	2	10	10	25	9	
	6	13	2	2	9	10	24	8	
	7	21	2	2	8	10	23	4	
	8	29	2	2	6	10	22	2	
	9	30	2	2	5	10	22	1	
37	1	2	4	3	26	20	23	24	
	2	7	4	3	23	20	20	22	
	3	9	4	3	20	19	19	18	
	4	11	3	3	18	18	18	15	
	5	19	2	2	16	18	14	13	
	6	20	2	2	16	18	13	12	
	7	21	2	2	12	17	10	7	
	8	22	1	2	11	17	7	5	
	9	29	1	2	8	16	6	2	
38	1	6	1	5	23	19	3	5	
	2	7	1	4	22	17	3	4	
	3	11	1	4	21	17	3	4	
	4	14	1	4	20	14	3	4	
	5	18	1	4	19	13	3	3	
	6	19	1	4	17	11	2	3	
	7	20	1	4	16	9	2	2	
	8	21	1	4	15	9	2	2	
	9	23	1	4	15	6	2	1	
39	1	3	3	2	22	7	19	19	
	2	4	3	2	21	7	17	18	
	3	9	3	2	20	6	15	16	
	4	11	2	2	18	5	13	14	
	5	17	2	2	18	4	12	10	
	6	21	2	2	16	3	10	9	
	7	23	2	2	15	3	9	6	
	8	25	1	2	14	1	7	5	
	9	27	1	2	14	1	6	1	
40	1	2	5	4	21	18	21	14	
	2	3	5	3	19	18	17	13	
	3	4	5	3	15	16	16	13	
	4	12	5	3	15	13	14	13	
	5	16	5	3	13	11	14	13	
	6	25	5	3	12	8	11	13	
	7	26	5	3	10	8	10	13	
	8	27	5	3	6	4	7	13	
	9	30	5	3	5	4	7	13	
41	1	7	5	4	21	14	5	27	
	2	8	5	4	17	14	5	26	
	3	15	5	4	17	14	4	25	
	4	16	5	3	15	14	4	24	
	5	19	5	3	11	14	3	24	
	6	20	5	2	10	14	2	23	
	7	23	5	1	8	14	2	23	
	8	24	5	1	7	14	2	22	
	9	29	5	1	4	14	1	22	
42	1	3	4	3	29	28	25	27	
	2	4	4	3	29	22	24	26	
	3	9	4	3	29	22	22	26	
	4	11	4	3	28	19	21	26	
	5	16	3	3	28	16	20	25	
	6	17	3	2	27	11	19	24	
	7	18	3	2	27	8	18	24	
	8	19	3	2	26	5	18	24	
	9	25	3	2	26	4	17	23	
43	1	3	3	4	7	23	13	25	
	2	8	3	4	6	23	13	21	
	3	9	3	4	5	22	13	19	
	4	11	3	4	5	20	12	16	
	5	20	2	3	4	20	11	14	
	6	24	2	3	3	18	11	13	
	7	27	2	2	2	18	11	8	
	8	28	2	2	1	17	10	6	
	9	30	2	2	1	16	10	4	
44	1	5	3	4	30	24	25	25	
	2	11	3	4	25	23	25	22	
	3	13	3	4	22	22	23	21	
	4	14	3	3	19	21	23	19	
	5	22	3	3	18	21	20	17	
	6	23	3	3	12	19	19	17	
	7	27	3	3	11	18	18	14	
	8	29	3	2	9	17	16	12	
	9	30	3	2	5	16	16	12	
45	1	6	5	2	9	19	4	24	
	2	7	4	1	8	18	4	22	
	3	8	4	1	7	15	3	22	
	4	9	4	1	7	15	3	20	
	5	14	4	1	6	11	2	20	
	6	15	4	1	4	10	2	19	
	7	16	4	1	4	9	1	18	
	8	22	4	1	3	8	1	17	
	9	24	4	1	1	5	1	17	
46	1	3	5	4	23	6	24	18	
	2	9	4	4	21	6	22	18	
	3	10	4	4	21	6	21	17	
	4	12	3	3	18	6	19	16	
	5	21	3	3	16	6	16	14	
	6	23	2	2	16	6	13	12	
	7	26	1	2	13	6	11	11	
	8	27	1	1	12	6	8	10	
	9	28	1	1	10	6	8	8	
47	1	7	2	4	21	5	28	23	
	2	8	1	4	20	5	27	23	
	3	9	1	4	19	5	27	19	
	4	13	1	4	19	5	27	18	
	5	16	1	4	17	5	27	15	
	6	18	1	4	17	5	27	13	
	7	20	1	4	15	5	27	8	
	8	24	1	4	14	5	27	8	
	9	26	1	4	14	5	27	4	
48	1	4	2	4	28	24	24	23	
	2	10	1	3	27	22	23	23	
	3	11	1	3	26	21	23	20	
	4	12	1	3	24	20	23	19	
	5	16	1	3	24	17	22	17	
	6	17	1	3	22	16	22	16	
	7	18	1	3	22	16	21	14	
	8	19	1	3	20	15	21	10	
	9	29	1	3	20	13	21	10	
49	1	1	3	5	15	20	24	15	
	2	2	2	5	14	19	23	13	
	3	6	2	5	12	16	23	13	
	4	12	2	5	12	14	21	13	
	5	21	2	5	9	13	20	11	
	6	25	2	5	8	12	20	11	
	7	26	2	5	7	11	19	11	
	8	27	2	5	6	10	18	10	
	9	28	2	5	4	7	17	9	
50	1	2	2	2	24	28	25	26	
	2	3	2	2	22	25	23	23	
	3	10	2	2	21	25	21	22	
	4	17	2	2	20	23	18	20	
	5	18	2	2	19	20	15	19	
	6	23	2	1	19	18	14	19	
	7	24	2	1	18	16	11	17	
	8	25	2	1	16	12	9	15	
	9	26	2	1	16	11	6	15	
51	1	3	4	2	18	24	29	21	
	2	4	4	2	17	24	28	20	
	3	5	4	2	16	24	28	19	
	4	6	4	2	16	24	28	18	
	5	7	4	2	16	24	28	16	
	6	17	4	2	15	24	27	16	
	7	20	4	2	15	24	27	14	
	8	27	4	2	14	24	27	14	
	9	29	4	2	14	24	27	13	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	15	15	849	871	834	896

************************************************************************
