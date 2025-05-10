CREATE DATABASE IndiaElectionResults;
USE IndiaElectionResults;

-- Que1:- Total Seats?
SELECT DISTINCT COUNT(Parliament_Constituency) AS Total_Seats FROM constituencywise_results;

-- Que2:- What are the total number of seats available for elections in each state?
SELECT states.State, COUNT(constituencywise_results.Parliament_Constituency) AS Total_Seats
FROM constituencywise_results JOIN statewise_results
ON constituencywise_results.Parliament_Constituency = statewise_results.Parliament_Constituency
JOIN states
ON states.State_ID = Statewise_results.State_ID
GROUP BY states.State
ORDER BY states.State;

-- Que3:- Total seats won by NDA Alliance?
SELECT SUM(Won) AS NDA_Total_Seats_Won
FROM partywise_results
WHERE Party IN (
'Bharatiya Janata Party - BJP',
'Telugu Desam - TDP',
'Janata Dal  (United) - JD(U)',
'Shiv Sena - SHS',
'AJSU Party - AJSUP',
'Apna Dal (Soneylal) - ADAL',
'Asom Gana Parishad - AGP',
'Hindustani Awam Morcha (Secular) - HAMS',
'Janasena Party - JnP',
'Janata Dal  (Secular) - JD(S)',
'Lok Janshakti Party(Ram Vilas) - LJPRV',
'Nationalist Congress Party - NCP',
'Rashtriya Lok Dal - RLD',
'Sikkim Krantikari Morcha - SKM'
);

-- Que4:- Seats won by NDA Alliance parties?
SELECT Party AS Party_Name, Won AS Seats_Won
FROM partywise_results
Where Party IN (
'Bharatiya Janata Party - BJP',
'Telugu Desam - TDP',
'Janata Dal  (United) - JD(U)',
'Shiv Sena - SHS',
'AJSU Party - AJSUP',
'Apna Dal (Soneylal) - ADAL',
'Asom Gana Parishad - AGP',
'Hindustani Awam Morcha (Secular) - HAMS',
'Janasena Party - JnP',
'Janata Dal  (Secular) - JD(S)',
'Lok Janshakti Party(Ram Vilas) - LJPRV',
'Nationalist Congress Party - NCP',
'Rashtriya Lok Dal - RLD',
'Sikkim Krantikari Morcha - SKM'
)
ORDER BY Seats_Won DESC;

-- Que5:- Total seats won by I.N.D.I.A. Alliance?
SELECT SUM(Won) AS INDIA_Total_Seats_Won
FROM partywise_results
WHERE Party IN (
'Indian National Congress - INC',
'Aam Aadmi Party - AAAP',
'All India Trinamool Congress - AITC',
'Bharat Adivasi Party - BHRTADVSIP',
'Communist Party of India  (Marxist) - CPI(M)',
'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
'Communist Party of India - CPI',
'Dravida Munnetra Kazhagam - DMK',
'Indian Union Muslim League - IUML',
'Jammu & Kashmir National Conference - JKN',
'Jharkhand Mukti Morcha - JMM',
'Kerala Congress - KEC',
'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
'Rashtriya Janata Dal - RJD',
'Rashtriya Loktantrik Party - RLTP',
'Revolutionary Socialist Party - RSP',
'Samajwadi Party - SP',
'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
'Viduthalai Chiruthaigal Katchi - VCK'
);

-- Que6:-Seats won by I.N.D.I.A. Alliance Parties?
SELECT Party AS Party_Name, Won AS Seats_Won
FROM partywise_results
WHERE Party IN(
'Indian National Congress - INC',
'Aam Aadmi Party - AAAP',
'All India Trinamool Congress - AITC',
'Bharat Adivasi Party - BHRTADVSIP',
'Communist Party of India  (Marxist) - CPI(M)',
'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
'Communist Party of India - CPI',
'Dravida Munnetra Kazhagam - DMK',
'Indian Union Muslim League - IUML',
'Jammu & Kashmir National Conference - JKN',
'Jharkhand Mukti Morcha - JMM',
'Kerala Congress - KEC',
'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
'Rashtriya Janata Dal - RJD',
'Rashtriya Loktantrik Party - RLTP',
'Revolutionary Socialist Party - RSP',
'Samajwadi Party - SP',
'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
'Viduthalai Chiruthaigal Katchi - VCK'
)
ORDER BY Seats_Won DESC;

-- Que7:- Add new column field in table partywise_results to get the party Alliance as NDA,I.N.D.I.A. and Other?
ALTER TABLE partywise_results
ADD COLUMN Party_Alliance VARCHAR(50);

SET SQL_SAFE_UPDATES = 0; 
#The command SET SQL_SAFE_UPDATES = 0; is used in MySQL to temporarily turn off safe update mode.
#This allows you to run UPDATE or DELETE queries without restrictions, such as:
#With a WHERE that does not use a key column (like a primary key).

UPDATE partywise_results
SET Party_Alliance = 'I.N.D.I.A.'
WHERE Party IN(
'Indian National Congress - INC',
'Aam Aadmi Party - AAAP',
'All India Trinamool Congress - AITC',
'Bharat Adivasi Party - BHRTADVSIP',
'Communist Party of India  (Marxist) - CPI(M)',
'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
'Communist Party of India - CPI',
'Dravida Munnetra Kazhagam - DMK',
'Indian Union Muslim League - IUML',
'Jammu & Kashmir National Conference - JKN',
'Jharkhand Mukti Morcha - JMM',
'Kerala Congress - KEC',
'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
'Rashtriya Janata Dal - RJD',
'Rashtriya Loktantrik Party - RLTP',
'Revolutionary Socialist Party - RSP',
'Samajwadi Party - SP',
'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
'Viduthalai Chiruthaigal Katchi - VCK'
);

UPDATE partywise_results
SET Party_Alliance = 'NDA'
WHERE Party IN(
'Bharatiya Janata Party - BJP',
'Telugu Desam - TDP',
'Janata Dal  (United) - JD(U)',
'Shiv Sena - SHS',
'AJSU Party - AJSUP',
'Apna Dal (Soneylal) - ADAL',
'Asom Gana Parishad - AGP',
'Hindustani Awam Morcha (Secular) - HAMS',
'Janasena Party - JnP',
'Janata Dal  (Secular) - JD(S)',
'Lok Janshakti Party(Ram Vilas) - LJPRV',
'Nationalist Congress Party - NCP',
'Rashtriya Lok Dal - RLD',
'Sikkim Krantikari Morcha - SKM'
);

UPDATE partywise_results
SET Party_Alliance = 'OTHER'
WHERE Party_Alliance IS NULL;

SET SQL_SAFE_UPDATES = 1;
#The command SET SQL_SAFE_UPDATES = 1; enables safe update mode in MySQL.


-- Que3,Que5 :- Short Query
SELECT Party_Alliance, SUM(Won)
FROM partywise_results
GROUP BY Party_Alliance;

-- Que4:- Short Query
SELECT Party, Won
FROM partywise_results
WHERE Party_Alliance = 'NDA'
ORDER BY Won DESC;

-- Que6:- Short Query
SELECT Party, Won
FROM partywise_results
WHERE Party_Alliance = 'I.N.D.I.A.'
ORDER BY Won DESC;

-- Que8:- Which party Alliance (NDA, I.N.D.I.A.,or OTHER) Won the most seats across all states?
SELECT Party_Alliance, SUM(Won)
FROM partywise_results
GROUP BY Party_Alliance
ORDER BY SUM(Won) DESC;

-- Que9:- Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency?
SELECT (constituencywise_results.Winning_Candidate) AS Candidates_Name, (partywise_results.Party) AS Party_Name,
constituencywise_results.Total_Votes, constituencywise_results.Margin,states.State, constituencywise_results.Constituency_Name,
partywise_results.Party_Alliance
FROM constituencywise_results JOIN partywise_results
ON constituencywise_results.Party_ID = partywise_results.Party_ID
JOIN statewise_results
ON constituencywise_results.Parliament_Constituency = statewise_results.Parliament_Constituency
JOIN states
ON statewise_results.State_ID = states.State_ID
WHERE constituencywise_results.Constituency_Name = 'MIRZAPUR';

-- Que10:- What is the distribution of EVM votes versus postal votes for candidates in a specific constituency?
SELECT constituencywise_details.Candidate, constituencywise_results.Constituency_Name, constituencywise_details.EVM_Votes,
constituencywise_details.Postal_Votes, constituencywise_details.Total_Votes
FROM constituencywise_details JOIN constituencywise_results
ON constituencywise_details.Constituency_ID = constituencywise_results.Constituency_ID
WHERE constituencywise_results.Constituency_Name = 'VARANASI';

-- Que11:- Which Parties won the most seats in a state, and how many seats did each party win?
SELECT partywise_results.Party, COUNT(partywise_results.Won) AS Seats_Won, states.State
FROM partywise_results JOIN constituencywise_results
ON partywise_results.Party_ID = constituencywise_results.Party_ID
JOIN statewise_results
ON statewise_results.Parliament_Constituency = constituencywise_results.Parliament_Constituency
JOIN states
ON states.State_ID = statewise_results.State_ID
WHERE states.State = 'Uttar Pradesh'
GROUP BY partywise_results.Party, states.State
ORDER BY Seats_Won DESC;

-- Que12:- What is the total number of seats won by each party Alliance (NDA, I.N.D.I.A., and OTHER) in each state
-- for the India Election 2024?
SELECT partywise_results.Party_Alliance, COUNT(partywise_results.Won) AS Seats_Won, states.State
FROM partywise_results JOIN constituencywise_results
ON partywise_results.Party_ID = constituencywise_results.Party_ID
JOIN statewise_results
ON statewise_results.Parliament_Constituency = constituencywise_results.Parliament_Constituency
JOIN states
ON states.State_ID = statewise_results.State_ID
WHERE states.State = 'Uttar Pradesh'
GROUP BY partywise_results.Party_Alliance, states.State
ORDER BY Seats_Won DESC;

-- Que13:- Which candidate received the highest number of EVM votes in each constituency(Top 10)?
SELECT constituencywise_details.Candidate, constituencywise_details.EVM_Votes, constituencywise_results.Constituency_Name
FROM constituencywise_details JOIN constituencywise_results
ON constituencywise_details.Constituency_ID = constituencywise_results.Constituency_ID
ORDER BY constituencywise_details.EVM_Votes DESC LIMIT 10;

-- Que14:- Which candidate won and which candidate was the runner-up in each constituency of state for the 2024 elections?
SELECT constituencywise_results.Constituency_Name, constituencywise_results.Winning_Candidate,
(statewise_results.Trailing_Candidate) AS Runnerup_Candidate
FROM constituencywise_results JOIN statewise_results
ON constituencywise_results.Parliament_Constituency = statewise_results.Parliament_Constituency
JOIN states
ON states.State_ID = statewise_results.State_ID
WHERE states.State = 'Uttar Pradesh';

-- Que15:- For the state of Maharashtra , what are the total number of seats, total number of candidate, total number 
-- of parties, total votes(including EVM and Postal), and the breakdown of EVM and Postal votes?
SELECT states.State, COUNT(DISTINCT constituencywise_results.Parliament_Constituency) AS Total_Seats, 
COUNT(DISTINCT constituencywise_details.Candidate)AS Total_Candidate,
COUNT(DISTINCT partywise_results.Party) AS Total_Party, SUM(constituencywise_details.EVM_Votes + 
constituencywise_details.Postal_Votes) AS Total_Votes, SUM(constituencywise_details.EVM_Votes)AS EVM,
SUM(constituencywise_details.Postal_Votes)AS Postal
FROM constituencywise_details JOIN constituencywise_results
ON constituencywise_details.Constituency_ID = constituencywise_results.Constituency_ID
JOIN statewise_results
ON statewise_results.Parliament_Constituency = constituencywise_results.Parliament_Constituency
JOIN states
ON states.State_ID = statewise_results.State_ID
JOIN partywise_results
ON partywise_results.Party_ID = constituencywise_results.Party_ID
WHERE states.State = 'Uttar Pradesh';












