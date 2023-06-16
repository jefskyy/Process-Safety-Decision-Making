# Project Collaborators
      Daniel Anastasio, PhD       Rose-Hulman Institute of Technology, Terre Haute, IN, USA     anastasi@rose-hulman.edu
      Cheryl Bodnar, PhD          Rowan University, Glassboro, NJ, USA                          daniel.burkey@uconn.edu
      Daniel Burkey, PhD          University of Connecticut, Storrs, CT, USA                    bodnar@rowan.edu
      Matthew Cooper, PhD         North Carolina State University, Raleigh, NC, USA             mecoope3@ncsu.edu
      Jeffrey Stransky, PhD       New Jersey Institute of Technology, Newark, NJ, USA           EMAIL PENDING
      Brittany Butler             Rowan University, Glassboro, NJ, USA                          butlerb0@students.rowan.edu
      Landon Bassett              University of Connecticut, Storrs, CT, USA                    landon.bassett@uconn.edu

# Project Description

The chemical process industry seeks to mitigate safety incidents through protective barriers: design, hazard analyses, etc. This project supplements these efforts by improving process safety decision making pedagogy.

Humans are notorious for being poor predictors of their behaviors [CITE], including when we predict that we will make safe decisions. We are often poor predictors of our behaviors because of "behavioral forecasting" and "ethical fading". 

Behavioral forecasting is when you know you are being tested, so you seek out to make the "best" ethical decision possible. Ethical fading is when you are bombarded with stimuli and tasks that you lose track of the ethical importance of decisions that you're making.

When these two phenomena take place in the chemical process industry, engineers can make series of poor decisions that lead to process incidents. These incidents often have harsh implications on plant workers, nearby communities and the environment, so there is a need for evaluation of such decisions.

This site documents a tool dedicated to evaluating the moral reaosning of process safety decisions, the Engineering Process Safety Research Instrument (EPSRI).

# The Engineering Process Safety Research Instrument (EPSRI)
 
The EPSRI can assess moral reasoning of respondents based on how they respond to to five hypothetical ethical dilemmas. Specifically, respondents must rate and rank a series of considerations towards a decision they make in the dilemma. The EPSRI has undergone instrument validation among senior undergraduate chemical engineering students from three US institutions. This means we have tested the EPSRI for its validity (that it reports moral reasoning) and reliability (that it reports this consistently). The exact process the EPSRI followed is documented in our publications [1, 2].

 The EPSRI has been prepared as a Qualtrics survey and Microsoft Word document([EPSRI Distributable](https://github.com/jefskyy/Process-Safety-Decision-Making/tree/main/EPSRI%20Distributable)) to be applied in classrooms or research studies.

# Obtaining Scores from the EPSRI

There are four results we recommend pulling out of the EPSRI: P score, N2 Score, Predominant Reasoning level, and CDIT score. However, before calculating these scores, it is important to clean the data for unreliable results. The following sub-sections describe these steps. Also, an example spreadsheet (Microsoft Excel) has been prepared to walk us through each of the steps in data filtering and in obtaining scores, here.

## Data Filtering
Data filtering consists of three filters: missing data, repeating data, and the rate-rank score. Repeating and missing data are easily obtained in the provided spreadsheet. However, the rate-rank score can be solved manually, and instructions on how to do so are provided below. Alternatively, and the preferred method, is to use the provided  MATLAB script. If you do not have access to MATLAB, other languages may be used, but have not been developed.

<details>
  <summary>Rate-rank Score (manual)</summary>
Next to the students ranks, make a table that resembles the one shown below (if its not there already in the provided template).
![Picture1](https://github.com/jefskyy/Process-Safety-Decision-Making/assets/44849178/f4cb78f3-7dc4-433a-90d1-6766296206f8)


To begin the rate-rank score, look at the items the student has ranked. Starting with the first ranked item, find the rating for the item. If there are no items rated higher than that item, put a 0 under the “most” column. If there is an item or items that are rated higher, it is an “inconsistency.” Put the number of inconsistencies in the “most” column. Continue this for the remaining items for all of the students. Once this is completed, move to the “rate-rank” score section of the table. Under the “most” column, multiply the number of inconsistencies in the “most” column from the first section. Second is multiplied by three, third is multiplied by two and fourth is multiplied by one. Under the “score” column, find the total of the values for the rate-rank score. A sample calculation is given below. 
<img width="731" alt="Picture 2" src="https://github.com/jefskyy/Process-Safety-Decision-Making/assets/44849178/1ca62db7-1370-4c48-ab71-68aeaee04bd1">

The first ranked item was item five, which was rated four. No item was rated higher than that item, so there are no inconsistencies. Item 6 was rated 3. There are four items rated higher than item 6 (3, 5, 9 and 11), however, item 5 was ranked higher than item six so it does not count as an inconsistency. There are only three inconsistencies for the second ranked item. Item 8 was was rated 1. There are ten items rated higher than item 8, however, items 5 and 6 were ranked higher than item 8 so they do not count as inconsistencies. There are 8 inconsistencies for the third ranked item. Item 3 was rated 4. There are no items rated higher than item 3, so there are no inconsistencies at this level. The above table should look like the one below.
<img width="714" alt="Picture3" src="https://github.com/jefskyy/Process-Safety-Decision-Making/assets/44849178/c04b8e60-fe82-49bf-b9aa-c13b34a9f823">

The rate-rank score for this student on this dilemma is 25. Complete this for all the students for every dilemma. Once this is done, go back to the master table that summarizes all of the tests. Add all of the scores for each students to find their rate-rank score. In order to find the cut-off value, you have to determine the highest possible rate-rank score. This can be found using the below equation.
<img width="682" alt="Picture4" src="https://github.com/jefskyy/Process-Safety-Decision-Making/assets/44849178/01a1565f-ccd1-4768-96ed-b10c30c943ab">

Where N is the number of items for that dilemma and n is the number of dilemmas. The cut-off score is one third of the highest possible rate rank score. 


<details>
  <summary>Tips for manually calculating the rate-rank socre</summary>
* Give yourself a lot of time to find the rate-rank score when calculating manually. 
* Make an initial run through the dilemma where you only record the students who would have a 0 rate-rank score. As soon as you come across a student where you have 0 count of inconsistencies, skip it and come back to it. This is a lot easier on your head. 
* If a student is missing a rate for an item, it counts as an inconsistency. 
* If a student ranks an item but there is no rate for it, all of the items (except for the items ranked higher than that one) are considered inconsistencies. For example, in the previous example, it the student ranked item 3 as fourth, but did not rate item three, there would be nine inconsistencies. 
* If a student ranks a consideration which is not in the Dilema, all of the items (except for the items ranked higher than that one) are considered inconsistencies.
* If a student ranks a consideration twice, both rank occurrences are considered inconsistencies. 

</details>

</details>

<details>
  <summary>Rate-rank Score (automated)</summary>

Video instructions: https://youtu.be/VMCIeS56H8E
[MATLAB Script]([url](https://github.com/jefskyy/Process-Safety-Decision-Making/blob/main/RateRankOrganizer.m))


</details>



# Interpreting Scores from the EPSRI

# Applying the EPSRI in your classroom


# Major Publications
      [This list needs to be reviewed to remove CUP specific publications]
      [1] J. Stransky, L. Bassett, C. Bodnar, D. D. Anastasio, D. D. Burkey, and M. Cooper, “A retrospective analysis on the impacts of an immersive digital environment on chemical engineering students’ moral reasoning,” Educ. Chem. Eng., vol. 35, pp. 22–28, 2021, doi: 10.1016/j.ece.2020.12.003.
      [2] J. Stransky, L. Bassett, D. D. Anastasio, M. Cooper, D. D. Burkey, and C. Bodnar, “Exploring student decision making trends in process safety dilemmas using the engineering process safety research instrument,” in ASEE Annual Conference and Exposition, Conference Proceedings, 2020, vol. 2020-June, doi: 10.18260/1-2--34645.
      [3] D. D. Anastasio, L. Bassett, J. Stransky, C. Bodnar, D. D. Burkey, and M. Cooper, “Collaborative research: Designing an immersive virtual environment for chemical engineering process safety training,” in ASEE Annual Conference and Exposition, Conference Proceedings, 2020, vol. 2020-June, doi: 10.18260/1-2--34301.
      [4] J. Stransky, C. Bodnar, M. Cooper, D. D. Anastasio, and D. D. Burkey, “Authentic process safety decisions in an engineering ethics context: expression of student moral development within surveys and immersive environments,” Australas. J. Eng. Educ., 2020, doi: 10.1080/22054952.2020.1809881.
      [5] J. Stransky, C. Bodnar, L. Bassett, M. Cooper, D. Anastasio, and D. Burkey, “Engineering process safety research instrument: Assessing students’ moral reasoning in process safety contexts,” Educ. Chem. Eng., vol. 42, no. November 2022, pp. 44–53, 2023, doi: 10.1016/j.ece.2022.11.004.
      [6] J. Stransky, L. Bassett, C. Bodnar, D. D. Anastasio, D. D. Burkey, and M. Cooper, “Understanding Student Motivation to Engage in the Contents Under Pressure Digital Game,” in ICL2021 – 24th International Conference on Interactive Collaborative Learning, 2021, no. September, pp. 1716–1727.
      [7] J. Stransky et al., “Impact of Immersive Training on Senior Chemical Engineering Students’ Prioritization of Process Safety Decision Criteria,” in 2021 ASEE Virtual Annual Conference Content Access, 2021.
      [8] J. Stransky, C. Bodnar, D. D. Burkey, D. D. Anastasio, and M. Cooper, “Exploring Engineering Students’ Decision Making Priorities in a Digital Plant Environment,” in ASEE Annual Conference & Exposition Proceedings, 2022.

# External References
