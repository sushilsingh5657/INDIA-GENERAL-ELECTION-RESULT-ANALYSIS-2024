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


# 1. <img width="497" alt="Que1" src="https://github.com/user-attachments/assets/ca6c63af-d7ad-4def-8457-0f4029e74d50" />  <img width="82" alt="Ans1" src="https://github.com/user-attachments/assets/9eb055c3-140a-4ee3-8986-16180b85f2d9" />

# 2. <img width="506" alt="Que2" src="https://github.com/user-attachments/assets/abbeee40-3bd8-4e6b-8a4b-3496eb0faa4d" />  <img width="182" alt="Ans2" src="https://github.com/user-attachments/assets/d6bb3ce3-32a5-432f-aacf-ebd9eea592d2" />  <img width="182" alt="Ans2 1" src="https://github.com/user-attachments/assets/0747d5aa-e657-43c6-bb0f-f2291d66af2c" />

# 3. <img width="228" alt="Que3" src="https://github.com/user-attachments/assets/6340bbf9-f670-40c5-8378-0518185baff9" />  <img width="122" alt="Ans3" src="https://github.com/user-attachments/assets/2ecf10a7-6dd6-43f8-9bf4-117d34b9e63b" />

# 4. <img width="239" alt="Que4" src="https://github.com/user-attachments/assets/1b5e2b45-da83-4e02-9047-25e49d90cc73" />  <img width="228" alt="Ans4" src="https://github.com/user-attachments/assets/40019515-5c2f-433d-8fb4-7cf72ba33300" />

# 5. <img width="396" alt="Que5" src="https://github.com/user-attachments/assets/4238bf52-0acf-4d67-9cbc-266dcaa3849f" />  <img width="125" alt="Ans5" src="https://github.com/user-attachments/assets/75970b46-298d-482c-8c39-46cc3027d895" />

# 6. <img width="340" alt="Que6" src="https://github.com/user-attachments/assets/4b02cec3-bd96-485d-8cdd-d67ef2ae4246" />  <img width="266" alt="Ans6" src="https://github.com/user-attachments/assets/c859326c-68d2-42c4-b1bc-4bcccbd66259" />

# 7. <img width="601" alt="Que7" src="https://github.com/user-attachments/assets/06178d12-81a1-492f-9c44-4d81f5c31e7a" />  <img width="395" alt="Ans7" src="https://github.com/user-attachments/assets/f0fabbd9-6d92-41ba-ba30-d2f35d61c7b9" />  <img width="229" alt="Ans7 1" src="https://github.com/user-attachments/assets/161c3470-5e16-4d83-9cb5-787571a9b952" />  <img width="392" alt="Ans7 2" src="https://github.com/user-attachments/assets/81920815-8048-485d-bd3f-71c42cd611f4" />

# 8. <img width="509" alt="Que8" src="https://github.com/user-attachments/assets/fc0253d5-5aa1-4021-bd5d-3c3862560297" />  <img width="159" alt="Ans8" src="https://github.com/user-attachments/assets/766cb438-f274-4e52-ac9a-d801db2eeb0a" />

# 9. <img width="698" alt="Que9" src="https://github.com/user-attachments/assets/233744ee-8e2b-4143-9eeb-ffee8d8060c9" />      <img width="566" alt="Ans9" src="https://github.com/user-attachments/assets/862a9f04-f842-4b9b-8fff-8e939858d55d" />

# 10. <img width="647" alt="Que10" src="https://github.com/user-attachments/assets/2e76f583-e014-4a4a-b05e-9624fe5f08ff" />  <img width="386" alt="Ans10" src="https://github.com/user-attachments/assets/853cd6b1-a5a4-4119-955e-2381b441d29d" />

# 11. <img width="508" alt="Que11" src="https://github.com/user-attachments/assets/f2d6bed8-7598-4158-9a6c-9d0eca390300" />  <img width="347" alt="Ans11" src="https://github.com/user-attachments/assets/c452ddb3-9e85-4ded-8f61-1c39608cbe99" />

# 12. <img width="610" alt="Que12" src="https://github.com/user-attachments/assets/d92d24c9-33bf-48a0-991d-b224481358f5" />  <img width="248" alt="Ans12" src="https://github.com/user-attachments/assets/4e849498-0e47-49d5-99e8-db06703e83a0" />

# 13. <img width="641" alt="Que13" src="https://github.com/user-attachments/assets/eaa590d2-41fb-495d-b834-dcfae3db77f8" />  <img width="273" alt="Ans13" src="https://github.com/user-attachments/assets/83f98d48-f428-4546-a9c8-fb97b44be7fa" />

# 14. <img width="646" alt="Que14" src="https://github.com/user-attachments/assets/0f024d8d-739e-42f5-a07f-ca799e89fe6f" />  <img width="386" alt="Ans14" src="https://github.com/user-attachments/assets/f7cd0213-ba35-4ac2-9ea6-4ce8bac01cf5" />  <img width="383" alt="Ans14 1" src="https://github.com/user-attachments/assets/defa4563-c6aa-4a2c-8198-cad62fa362e7" />  <img width="384" alt="ans14 2" src="https://github.com/user-attachments/assets/51747169-cfd6-41c7-9765-27e7640d195d" />  <img width="386" alt="Ans14 3" src="https://github.com/user-attachments/assets/ce1e8c5b-6c27-40d3-aa79-a56a0f9b54c4" />  <img width="385" alt="Ans14 4" src="https://github.com/user-attachments/assets/8c385bdd-d214-40dc-a9be-69deb08c3fa4" />

# 15. <img width="626" alt="Que15" src="https://github.com/user-attachments/assets/ead450d8-628a-4f14-805e-98c513544df4" />  <img width="457" alt="Ans15" src="https://github.com/user-attachments/assets/066b4c58-31c6-4b8a-8166-d20f2a0ea2bd" />














































