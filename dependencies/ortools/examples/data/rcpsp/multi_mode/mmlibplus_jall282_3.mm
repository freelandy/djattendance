jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 7 10 11 12 13 16 
2	9	10		41 35 29 27 26 24 23 21 17 14 
3	9	6		41 23 22 21 15 8 
4	9	4		41 21 14 6 
5	9	5		27 23 22 21 9 
6	9	10		51 35 29 28 26 25 24 23 22 17 
7	9	8		51 41 35 29 28 25 20 17 
8	9	8		51 35 28 27 26 25 24 17 
9	9	4		35 29 17 15 
10	9	8		51 29 28 26 25 24 19 18 
11	9	8		35 29 28 26 25 24 19 18 
12	9	8		51 35 28 27 26 25 19 18 
13	9	6		35 29 28 24 19 18 
14	9	10		51 50 40 39 34 32 30 28 25 22 
15	9	8		51 50 34 32 30 28 26 25 
16	9	10		51 40 39 38 35 34 32 31 30 28 
17	9	2		19 18 
18	9	10		50 40 39 38 37 34 33 32 31 30 
19	9	10		50 40 39 38 37 36 34 33 32 30 
20	9	4		49 30 26 24 
21	9	6		50 38 37 32 30 25 
22	9	6		49 48 45 38 33 31 
23	9	8		47 46 45 44 39 37 36 33 
24	9	7		48 45 44 39 37 36 33 
25	9	5		49 48 47 45 31 
26	9	6		48 47 45 43 40 38 
27	9	6		47 46 45 44 39 36 
28	9	5		47 46 37 36 33 
29	9	3		46 42 34 
30	9	4		48 47 45 44 
31	9	3		44 42 36 
32	9	3		44 43 42 
33	9	2		43 42 
34	9	2		49 45 
35	9	2		43 42 
36	9	1		43 
37	9	1		42 
38	9	1		46 
39	9	1		42 
40	9	1		44 
41	9	1		42 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	10	27	14	22	10	12	7	
	2	11	27	14	20	10	9	6	
	3	12	26	14	17	10	9	6	
	4	14	25	14	16	9	7	5	
	5	24	24	14	12	9	5	5	
	6	25	24	14	12	8	4	4	
	7	26	23	14	10	8	4	3	
	8	27	22	14	6	7	3	3	
	9	28	21	14	6	7	2	3	
3	1	5	12	23	28	18	20	27	
	2	7	11	21	27	16	20	27	
	3	9	11	20	26	16	20	25	
	4	13	11	19	23	13	20	25	
	5	14	11	17	22	13	20	23	
	6	15	11	17	21	12	19	22	
	7	16	11	15	19	9	19	21	
	8	25	11	15	18	8	19	21	
	9	27	11	14	16	7	19	20	
4	1	7	28	25	16	22	26	26	
	2	8	27	25	15	19	23	26	
	3	9	26	25	15	17	20	24	
	4	13	25	25	15	16	18	21	
	5	18	25	24	15	14	12	20	
	6	19	24	24	15	14	11	17	
	7	23	22	24	15	12	7	14	
	8	26	21	24	15	10	7	13	
	9	27	20	24	15	10	4	12	
5	1	1	24	13	10	14	21	18	
	2	7	22	12	10	14	19	17	
	3	9	22	12	8	14	17	17	
	4	18	21	9	7	14	14	15	
	5	23	21	9	7	13	13	15	
	6	24	20	7	5	13	11	13	
	7	28	19	6	4	12	8	12	
	8	29	19	4	3	12	5	11	
	9	30	18	3	2	12	4	11	
6	1	5	18	10	21	24	24	7	
	2	6	17	9	20	23	21	5	
	3	7	16	9	19	21	17	5	
	4	8	15	9	19	20	17	5	
	5	9	15	9	18	17	13	4	
	6	10	15	9	18	15	9	4	
	7	12	14	9	18	15	9	3	
	8	19	12	9	17	12	5	2	
	9	29	12	9	17	12	3	2	
7	1	3	27	12	26	22	12	21	
	2	4	25	12	24	20	11	19	
	3	5	23	11	24	18	11	15	
	4	15	23	11	24	16	11	15	
	5	18	21	11	23	15	11	11	
	6	24	20	10	22	12	10	10	
	7	25	20	9	22	10	10	8	
	8	28	19	9	21	10	10	4	
	9	29	18	9	20	7	10	2	
8	1	5	18	21	20	26	10	24	
	2	7	17	20	17	24	9	22	
	3	15	16	20	16	23	8	20	
	4	16	15	20	14	21	8	19	
	5	17	13	20	12	16	7	16	
	6	18	13	19	10	15	7	14	
	7	19	12	19	7	13	6	11	
	8	21	10	19	6	10	6	10	
	9	25	10	19	3	8	6	8	
9	1	8	22	25	14	5	17	8	
	2	9	22	24	12	4	15	8	
	3	10	22	23	11	4	14	8	
	4	11	21	22	9	4	12	8	
	5	12	21	21	7	3	11	8	
	6	13	21	20	5	3	10	8	
	7	26	20	20	4	3	8	8	
	8	28	20	19	2	3	7	8	
	9	30	20	18	1	3	7	8	
10	1	7	28	15	12	25	11	8	
	2	9	27	14	12	21	9	7	
	3	10	25	13	12	19	8	7	
	4	12	25	10	12	19	7	7	
	5	13	23	10	12	13	5	7	
	6	18	22	7	12	12	4	7	
	7	20	21	7	12	11	3	7	
	8	24	20	5	12	5	2	7	
	9	27	20	4	12	3	2	7	
11	1	2	27	25	26	22	25	23	
	2	3	25	23	26	22	21	23	
	3	4	23	22	25	20	20	22	
	4	5	20	20	24	18	15	19	
	5	6	18	16	24	18	13	19	
	6	11	14	16	23	16	11	17	
	7	12	13	12	23	13	9	17	
	8	26	8	10	22	13	6	15	
	9	29	7	10	22	11	4	13	
12	1	1	16	26	27	13	17	20	
	2	2	15	25	23	13	17	19	
	3	4	12	24	23	12	16	19	
	4	11	10	22	19	12	15	18	
	5	12	10	18	18	11	14	17	
	6	16	9	17	16	10	14	15	
	7	17	6	14	13	9	14	14	
	8	23	4	12	11	8	12	13	
	9	28	3	12	11	8	12	13	
13	1	3	22	17	26	10	18	20	
	2	5	21	17	25	9	17	18	
	3	6	20	15	25	9	16	16	
	4	7	18	14	25	9	16	16	
	5	8	15	14	24	8	14	15	
	6	13	15	13	24	8	12	14	
	7	17	14	12	24	7	12	13	
	8	18	12	11	24	7	10	12	
	9	24	11	11	24	6	10	10	
14	1	1	7	23	19	26	18	20	
	2	2	6	22	16	23	18	19	
	3	15	6	22	15	22	18	17	
	4	16	6	20	13	17	18	16	
	5	17	6	20	10	17	17	16	
	6	18	5	18	9	14	17	15	
	7	22	5	17	8	12	16	14	
	8	25	5	16	5	9	16	13	
	9	30	5	16	3	8	16	13	
15	1	5	15	27	19	30	17	27	
	2	6	15	26	16	27	16	24	
	3	10	15	26	13	22	15	22	
	4	14	15	25	12	19	15	19	
	5	18	15	25	11	16	14	17	
	6	20	15	24	8	15	13	15	
	7	21	15	24	5	12	11	12	
	8	27	15	23	3	7	11	10	
	9	29	15	23	2	5	10	8	
16	1	1	21	28	22	11	19	10	
	2	7	20	23	22	11	17	10	
	3	15	16	21	21	9	16	10	
	4	16	16	21	21	8	14	10	
	5	17	12	17	21	7	12	10	
	6	20	11	14	20	7	11	10	
	7	21	9	14	19	5	11	10	
	8	26	8	12	19	4	9	10	
	9	27	4	10	19	4	9	10	
17	1	8	26	22	19	26	25	14	
	2	9	24	21	18	23	21	14	
	3	10	23	18	15	20	19	13	
	4	11	23	15	13	17	19	12	
	5	12	22	14	12	13	17	11	
	6	21	22	13	12	13	14	11	
	7	22	21	11	9	9	13	10	
	8	25	20	8	8	5	11	9	
	9	26	19	7	7	3	9	9	
18	1	2	24	27	30	25	20	22	
	2	14	23	24	28	24	19	22	
	3	19	22	22	27	24	18	22	
	4	21	21	17	25	22	16	21	
	5	22	20	15	25	22	14	21	
	6	23	19	14	24	21	13	21	
	7	28	18	11	22	20	12	20	
	8	29	17	7	22	19	11	20	
	9	30	17	6	20	17	10	20	
19	1	1	22	24	20	23	21	17	
	2	2	19	21	17	23	21	15	
	3	3	17	21	17	23	20	14	
	4	4	16	19	16	23	20	13	
	5	5	14	17	15	23	19	10	
	6	8	9	17	13	23	18	10	
	7	9	7	16	11	23	17	9	
	8	13	6	14	11	23	16	7	
	9	22	3	13	10	23	16	5	
20	1	2	23	9	27	14	28	13	
	2	9	22	9	24	14	26	13	
	3	16	22	9	21	12	24	13	
	4	18	21	9	20	11	19	13	
	5	26	20	9	17	11	17	13	
	6	27	20	9	14	9	15	13	
	7	28	18	9	11	9	14	13	
	8	29	17	9	8	8	12	13	
	9	30	17	9	5	7	10	13	
21	1	2	17	26	24	26	29	15	
	2	7	17	24	22	22	28	13	
	3	12	17	24	19	21	27	13	
	4	14	17	24	19	21	26	10	
	5	15	17	23	16	19	24	9	
	6	16	17	23	15	17	23	9	
	7	17	17	22	15	14	22	6	
	8	18	17	22	13	13	21	6	
	9	24	17	21	12	12	20	4	
22	1	1	17	21	28	28	22	17	
	2	8	16	21	25	27	21	15	
	3	10	14	21	25	25	18	15	
	4	12	13	20	24	25	16	15	
	5	17	11	20	23	23	14	14	
	6	22	10	20	21	23	13	13	
	7	23	10	20	21	22	11	13	
	8	26	8	19	19	20	8	12	
	9	30	6	19	19	20	8	11	
23	1	1	30	24	13	9	28	16	
	2	2	27	23	13	8	26	15	
	3	5	25	22	12	6	25	15	
	4	8	21	22	12	6	25	14	
	5	10	17	20	12	4	24	13	
	6	11	15	19	11	4	24	13	
	7	17	15	16	11	2	22	13	
	8	20	12	15	10	1	22	12	
	9	30	10	15	10	1	21	12	
24	1	8	25	21	6	24	19	28	
	2	15	25	18	5	24	17	24	
	3	16	24	17	4	24	15	22	
	4	20	22	14	4	24	13	20	
	5	21	22	12	3	23	10	17	
	6	22	22	12	3	23	7	12	
	7	23	21	9	2	23	6	11	
	8	24	19	6	1	23	3	7	
	9	25	19	6	1	23	3	4	
25	1	1	22	24	21	25	24	23	
	2	2	21	23	18	21	24	21	
	3	3	21	23	17	18	21	18	
	4	7	21	21	15	17	18	15	
	5	8	20	20	15	14	17	13	
	6	10	19	20	13	10	15	11	
	7	16	18	19	12	9	12	9	
	8	17	18	17	9	6	12	8	
	9	18	17	16	9	4	8	6	
26	1	2	16	16	13	23	30	10	
	2	7	15	14	11	20	26	9	
	3	8	12	14	9	19	23	9	
	4	9	11	13	9	18	20	9	
	5	13	8	13	7	14	15	9	
	6	15	8	13	6	13	14	8	
	7	16	5	12	3	12	10	8	
	8	21	4	12	2	10	9	8	
	9	29	2	11	2	9	4	8	
27	1	1	25	21	26	29	15	16	
	2	6	22	19	26	28	13	15	
	3	9	21	18	26	28	11	14	
	4	19	17	14	26	27	10	13	
	5	20	16	12	26	27	9	12	
	6	23	15	11	26	26	8	11	
	7	25	12	8	26	26	5	10	
	8	26	11	6	26	25	4	9	
	9	28	9	6	26	25	4	9	
28	1	3	17	11	30	14	21	26	
	2	5	14	10	28	12	21	25	
	3	7	13	10	28	11	20	21	
	4	8	13	10	28	10	18	20	
	5	13	12	10	27	9	18	16	
	6	19	9	9	27	6	16	16	
	7	27	8	9	26	5	15	11	
	8	29	7	9	25	4	15	10	
	9	30	7	9	25	3	14	7	
29	1	5	27	23	17	14	26	25	
	2	12	25	21	16	13	25	23	
	3	13	24	18	14	12	25	21	
	4	20	23	16	14	10	23	20	
	5	21	21	13	12	10	23	18	
	6	24	18	11	11	8	23	17	
	7	27	16	10	10	8	22	16	
	8	28	14	8	10	6	21	13	
	9	29	13	6	9	6	20	12	
30	1	3	24	27	27	13	18	23	
	2	9	22	25	26	12	18	19	
	3	12	22	23	25	11	14	19	
	4	13	20	21	24	10	12	16	
	5	20	19	18	23	9	11	13	
	6	23	19	16	23	9	10	9	
	7	24	17	14	22	8	6	8	
	8	27	16	13	20	6	5	4	
	9	29	15	10	20	5	2	1	
31	1	1	26	30	23	22	28	26	
	2	2	25	27	22	22	24	25	
	3	3	25	25	21	20	22	23	
	4	10	23	22	19	19	18	22	
	5	11	23	21	17	18	16	22	
	6	20	22	20	16	18	11	21	
	7	23	21	17	13	16	10	20	
	8	24	19	14	13	16	5	19	
	9	26	19	14	12	15	3	17	
32	1	2	13	2	26	25	24	22	
	2	4	12	2	22	25	24	20	
	3	8	11	2	21	23	24	20	
	4	12	10	2	19	23	23	19	
	5	13	9	2	16	22	23	15	
	6	17	7	2	13	20	23	14	
	7	26	7	2	10	19	22	14	
	8	28	6	2	7	18	22	10	
	9	29	5	2	6	18	22	9	
33	1	5	7	15	28	22	10	14	
	2	18	7	14	26	18	10	14	
	3	24	7	13	26	17	10	13	
	4	25	7	13	23	14	10	12	
	5	26	7	12	23	12	10	11	
	6	27	7	11	21	9	10	11	
	7	28	7	10	18	7	10	11	
	8	29	7	10	17	7	10	9	
	9	30	7	9	17	5	10	9	
34	1	5	11	20	16	22	29	22	
	2	8	10	18	14	20	29	21	
	3	16	10	17	12	17	28	20	
	4	17	10	17	10	14	28	16	
	5	18	10	14	9	13	27	13	
	6	21	10	12	8	10	27	11	
	7	24	10	11	6	9	26	8	
	8	27	10	11	5	6	26	8	
	9	29	10	9	4	4	25	4	
35	1	8	3	21	10	23	20	24	
	2	9	3	20	8	21	18	20	
	3	10	3	20	7	20	17	19	
	4	11	3	19	7	19	16	17	
	5	18	3	17	6	18	16	11	
	6	19	2	16	5	18	15	9	
	7	21	2	16	5	17	14	9	
	8	25	2	15	3	16	12	5	
	9	29	2	14	3	15	12	2	
36	1	1	19	23	19	28	25	11	
	2	6	18	21	17	23	24	10	
	3	8	18	20	17	21	21	10	
	4	9	18	17	16	20	21	10	
	5	14	18	17	15	15	19	10	
	6	16	17	16	13	14	16	10	
	7	19	17	13	12	10	16	10	
	8	28	17	11	11	9	14	10	
	9	29	17	10	11	6	12	10	
37	1	2	27	24	21	20	24	19	
	2	4	25	20	17	18	22	18	
	3	8	25	19	17	18	21	18	
	4	9	24	17	14	16	16	17	
	5	14	23	15	12	15	15	17	
	6	16	22	14	11	14	11	17	
	7	17	22	13	9	11	7	16	
	8	22	21	10	8	10	3	16	
	9	28	20	9	6	9	2	15	
38	1	11	8	23	24	19	22	27	
	2	12	8	21	21	18	19	27	
	3	13	8	21	18	18	18	24	
	4	14	8	19	17	17	17	24	
	5	17	8	19	16	17	15	23	
	6	19	7	18	12	16	13	21	
	7	24	7	16	11	16	13	19	
	8	25	7	16	8	15	11	18	
	9	29	7	15	6	15	8	17	
39	1	5	29	6	15	18	17	20	
	2	9	29	6	12	18	14	17	
	3	11	29	6	11	14	14	17	
	4	15	29	6	9	14	12	15	
	5	16	29	6	8	10	10	12	
	6	17	29	6	8	9	10	9	
	7	18	29	6	6	8	9	7	
	8	22	29	6	4	6	8	5	
	9	29	29	6	3	4	6	4	
40	1	7	22	15	3	14	26	29	
	2	9	22	15	3	12	25	29	
	3	10	20	15	3	11	23	28	
	4	11	20	15	3	11	20	27	
	5	12	18	15	3	10	19	27	
	6	13	17	15	2	8	18	26	
	7	21	16	15	2	8	17	26	
	8	24	15	15	2	7	14	26	
	9	29	15	15	2	6	14	25	
41	1	3	25	27	23	12	25	7	
	2	5	22	26	23	10	23	7	
	3	6	21	23	19	10	20	7	
	4	11	20	21	19	10	17	7	
	5	12	19	19	16	9	16	7	
	6	21	16	19	14	9	14	7	
	7	23	15	17	13	8	13	7	
	8	24	14	14	10	8	11	7	
	9	29	12	13	9	7	9	7	
42	1	3	13	20	24	23	5	24	
	2	4	11	18	20	23	5	24	
	3	6	10	18	19	22	5	21	
	4	7	9	17	18	21	4	18	
	5	8	7	17	15	20	4	16	
	6	14	6	16	14	18	3	15	
	7	23	5	16	11	17	3	12	
	8	26	4	16	10	16	2	12	
	9	27	3	15	6	14	2	9	
43	1	1	8	24	29	27	17	16	
	2	3	8	20	28	26	16	16	
	3	4	8	19	28	26	14	14	
	4	5	8	18	28	26	13	14	
	5	15	8	15	27	25	12	13	
	6	20	8	12	27	25	11	11	
	7	25	8	11	26	25	10	10	
	8	26	8	8	26	25	10	10	
	9	27	8	6	26	25	9	9	
44	1	2	11	19	24	29	7	11	
	2	3	11	18	24	26	7	10	
	3	11	10	17	23	26	5	10	
	4	14	10	16	21	23	5	10	
	5	16	9	14	20	22	4	10	
	6	18	8	13	19	22	4	9	
	7	20	7	13	17	21	3	9	
	8	23	6	11	15	18	2	9	
	9	27	6	11	15	18	1	9	
45	1	11	28	17	2	16	22	25	
	2	13	25	16	1	14	22	21	
	3	15	23	15	1	14	22	20	
	4	16	20	14	1	12	22	17	
	5	23	16	12	1	12	22	16	
	6	24	15	11	1	12	22	14	
	7	26	12	10	1	10	22	13	
	8	28	10	8	1	10	22	12	
	9	29	9	8	1	9	22	9	
46	1	1	22	20	15	29	29	23	
	2	4	21	18	14	28	29	22	
	3	6	21	15	13	28	29	22	
	4	15	20	12	13	28	28	21	
	5	22	20	11	12	27	28	21	
	6	25	20	11	9	27	27	21	
	7	26	19	7	9	27	26	21	
	8	29	19	6	8	27	26	20	
	9	30	19	4	7	27	26	20	
47	1	3	23	8	21	20	14	30	
	2	8	22	7	20	20	14	27	
	3	10	21	7	19	19	14	24	
	4	11	19	6	17	18	14	19	
	5	12	19	4	17	18	13	18	
	6	13	18	3	17	17	13	13	
	7	18	17	2	15	17	12	9	
	8	20	16	1	14	17	12	7	
	9	23	16	1	14	16	12	4	
48	1	6	23	26	24	7	13	14	
	2	8	21	26	24	7	12	13	
	3	9	18	26	24	7	12	13	
	4	16	17	26	24	7	12	13	
	5	17	14	26	23	7	11	13	
	6	19	13	26	23	7	11	13	
	7	22	10	26	22	7	11	13	
	8	28	8	26	22	7	11	13	
	9	29	7	26	22	7	11	13	
49	1	4	20	26	26	7	20	12	
	2	5	18	24	26	6	19	11	
	3	14	18	24	22	6	19	11	
	4	15	18	24	20	5	19	10	
	5	16	16	23	20	5	19	9	
	6	18	16	22	18	5	19	9	
	7	24	16	22	14	4	19	8	
	8	26	14	21	12	4	19	8	
	9	30	14	21	11	4	19	8	
50	1	3	14	13	16	18	27	28	
	2	5	13	13	16	18	25	26	
	3	14	13	11	14	17	21	25	
	4	16	13	10	14	17	19	24	
	5	24	13	9	13	15	16	23	
	6	25	13	9	12	15	12	22	
	7	26	13	7	12	14	12	21	
	8	27	13	6	11	13	9	19	
	9	30	13	6	10	13	5	18	
51	1	4	24	25	27	24	28	17	
	2	7	24	24	24	23	25	16	
	3	10	24	24	20	22	21	15	
	4	11	24	23	16	20	21	15	
	5	12	23	23	14	20	17	14	
	6	16	23	23	12	20	17	14	
	7	17	23	23	11	19	15	14	
	8	20	23	22	8	17	13	13	
	9	24	23	22	5	17	11	13	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	80	72	76	72	895	837

************************************************************************
