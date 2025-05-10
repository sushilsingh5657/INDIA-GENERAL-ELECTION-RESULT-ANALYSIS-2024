# SQL PROJECT: INDIA-GENERAL-ELECTION-RESULT-ANALYSIS-2024
# Project Description
This project presents a structured SQL-based analysis of the 2024 Indian General Elections. Using custom-built queries, the project uncovers key electoral insights such as total seat distribution, state-wise breakdowns, and performance summaries of major political alliances like the NDA.The data is organized into multiple tables representing constituencies, parties, and states, allowing for multi-dimensional analysis.
# Key Objectives
•	Determine the total number of parliamentary seats.

•	Analyze state-wise seat distribution.

•	Evaluate seats won by the NDA alliance and its individual parties.

•	Compare performance of other major alliances (e.g., INDIA bloc, UPA).

•	Identify top-performing and underperforming states or parties.
# Tools Used
•	SQL: Core querying language used to derive election insights.

•	MySQL: Database system used for data management.

•	Custom Schema: Includes constituencywise_results, partywise_results, statewise_results, and states.
# Steps in the project
# 1. Data Collection
•	Collected 2024 Indian General Election results from official sources (e.g., Kaggle).

•	Organized data into CSV files with fields like State, Constituency, Party, Candidate, Votes, Winner, etc.

# 2. Database & Table Creation
•	Created a MySQL database named IndiaElectionResults.

•	Designed and imported structured tables:
o	constituencywise_results

o	statewise_results

o	partywise_results

o	states

# 3. Data Cleaning & Normalization
•	Removed inconsistencies and duplicates.

•	Standardized party names, state IDs, and constituency formats.

•	Established foreign key relationships for better query handling.

# 4. SQL Query Design & Execution
•	Wrote SQL queries to answer key election questions:

o	Total seats nationwide and per state.

o	Party-wise and alliance-wise seat counts.

o	Top winning states and parties.

o	Independent candidate performance.

# 5. KPI & Metric Extraction
•	Calculated election KPIs such as:

o	Total seats won by NDA, INDIA, Others.

o	State-wise and party-wise performance.

o	Seat share percentages.

# 6. Insight Generation
•	Derived conclusions:

o	BJP led the NDA with a majority.

o	INDIA alliance made significant gains.

o	Independent and regional parties had localized impact.

# SQL QUERY PREVIEW


<img width="497" alt="Que1" src="https://github.com/user-attachments/assets/ca6c63af-d7ad-4def-8457-0f4029e74d50" />  <img width="82" alt="Ans1" src="https://github.com/user-attachments/assets/9eb055c3-140a-4ee3-8986-16180b85f2d9" />

<img width="506" alt="Que2" src="https://github.com/user-attachments/assets/abbeee40-3bd8-4e6b-8a4b-3496eb0faa4d" />  <img width="182" alt="Ans2" src="https://github.com/user-attachments/assets/d6bb3ce3-32a5-432f-aacf-ebd9eea592d2" />

<img width="182" alt="Ans2 1" src="https://github.com/user-attachments/assets/0747d5aa-e657-43c6-bb0f-f2291d66af2c" />

<img width="228" alt="Que3" src="https://github.com/user-attachments/assets/6340bbf9-f670-40c5-8378-0518185baff9" />  <img width="122" alt="Ans3" src="https://github.com/user-attachments/assets/2ecf10a7-6dd6-43f8-9bf4-117d34b9e63b" />
















