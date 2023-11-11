/*Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.*/
select s.hacker_id , h.name 
from Submissions s, Hackers h,Challenges c,Difficulty d

where s.score = d.score
and s.hacker_id = h.hacker_id
and s.challenge_id = c.challenge_id
and d.difficulty_level = c.difficulty_level

group by s.hacker_id , h.name 
having count(c.difficulty_level) > 1 
order by count(c.difficulty_level) DESC,1