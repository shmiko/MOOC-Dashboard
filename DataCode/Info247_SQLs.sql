/***********************************************************
6.Column to denote Graded Item Type 
7.Descriptive Name of the Module Id
/* Add Graded Item Type */
ALTER TABLE `info247`.`week3` ADD COLUMN `gitemtype` VARCHAR(8) NULL DEFAULT NULL
/* Add Name Column */
ALTER TABLE `info247`.`week3` ADD COLUMN `name` LONGTEXT NULL DEFAULT NULL




/* Item Type = homework OR practice OR quiz */
update week3 set gitemtype = 'homework' where module_id in
(
'i4x://BerkeleyX/CS188.1x/problem/csp_campus',
'i4x://BerkeleyX/CS188.1x/problem/csp_facts',
'i4x://BerkeleyX/CS188.1x/problem/4_queens',
'i4x://BerkeleyX/CS188.1x/problem/csp_tree',
'i4x://BerkeleyX/CS188.1x/problem/csp_tree_solve'
)

update week3 set gitemtype = 'practice' where module_id in
(
'i4x://BerkeleyX/CS188.1x/problem/practice:csp_campus',
'i4x://BerkeleyX/CS188.1x/problem/practice:csp_facts',
'i4x://BerkeleyX/CS188.1x/problem/practice:4_queens',
'i4x://BerkeleyX/CS188.1x/problem/practice:csp_tree',
'i4x://BerkeleyX/CS188.1x/problem/practice:csp_tree_solve'
)

update week3 set gitemtype = 'quiz' where module_id in
(
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_1_constraints',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_2_constraint_graph',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_3_constraints',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_4_backtracking',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_5_forward_checking',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_6_consistency',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_7_arc_consistency',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_8_arc_consistency_backtracking',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_10_lcv',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_1_tree',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_2_cutset',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_3_min',
'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_4_hill'
)

/* Name Column */
update week3 set name = 'Lecture 4: CSPs' where module_id = 'i4x://BerkeleyX/CS188.1x/sequential/Lecture_4_CSPs';
update week3 set name = 'Lecture 4: CSPs (continued)' where module_id = 'i4x://BerkeleyX/CS188.1x/sequential/Lecture_4_CSPs_continued';
update week3 set name = 'Lecture 5: CSPs II' where module_id = 'i4x://BerkeleyX/CS188.1x/sequential/Lecture_5_CSPs_II';
update week3 set name = 'Lecture 5: CSPs II (continued)' where module_id = 'i4x://BerkeleyX/CS188.1x/sequential/Lecture_5_CSPs_II_continued';
update week3 set name = 'Homework 2: CSPs' where module_id = 'i4x://BerkeleyX/CS188.1x/sequential/Homework_2_CSPs';
update week3 set name = 'Homework 2: CSPs (practice)' where module_id = 'i4x://BerkeleyX/CS188.1x/sequential/Homework_2_CSPs_Practice';
update week3 set name = 'Quiz 1: Constraints' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_1_constraints';
update week3 set name = 'Quiz 2: Constraint Graphs' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_2_constraint_graph';
update week3 set name = 'Quiz 3: Constraints' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_3_constraints';
update week3 set name = 'Quiz 4: Backtracking Search' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_4_backtracking';
update week3 set name = 'Quiz 5: Forward Checking' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_5_forward_checking';
update week3 set name = 'Quiz 6: Arc Consistency' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_6_consistency';
update week3 set name = 'Quiz 7: Arc Consistency' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_7_arc_consistency';
update week3 set name = 'Quiz 8: Arc Consistency and Backtracking Search' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_8_arc_consistency_backtracking';
update week3 set name = 'Quiz 9: Least Constraining Value' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_4:quiz_10_lcv';
update week3 set name = 'Quiz 1: Tree-Structured CSPs' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_1_tree';
update week3 set name = 'Quiz 2: Smallest Cutset' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_2_cutset';
update week3 set name = 'Quiz 3: Min-Conflicts' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_3_min';
update week3 set name = 'Quiz 4: Hill Climbing' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/Lecture_5:quiz_4_hill';
update week3 set name = 'Q1: Campus CSP' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/csp_campus';
update week3 set name = 'Q2: CSP Properties' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/csp_facts';
update week3 set name = 'Q3: 4-Queens' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/4_queens';
update week3 set name = 'Q4: Tree-Structured CSPs' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/csp_tree';
update week3 set name = 'Q5: Solving Tree-Structured CSPs' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/csp_tree_solve';
update week3 set name = 'Practice - Q1: Campus CSP' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/practice:csp_campus';
update week3 set name = 'Practice - Q2: CSP Properties' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/practice:csp_facts';
update week3 set name = 'Practice - Q3: 4-Queens' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/practice:4_queens';
update week3 set name = 'Practice - Q4: Tree-Structured CSPs' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/practice:csp_tree';
update week3 set name = 'Practice - Q5: Solving Tree-Structured CSPs' where module_id = 'i4x://BerkeleyX/CS188.1x/problem/practice:csp_tree_solve';
update week3 set name = 'CS188.1x Artificial Intelligence' where module_id = 'i4x://BerkeleyX/CS188.1x/course/2012_Fall';


