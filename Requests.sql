use SuiteForGame

--Users - Game
select Name_Game
from Estimation
where Login = 'Value' 

--тоp игр PC
select Name_Game
from Estimation
where Name_Game in (select Name_Game
					from Game
					where Platform like 'PC%') 
group by Name_Game
order by sum(Estimate)desc

--Games talk
select top 3 Name_Game
from Estimation
where Name_Game in (select Name_Game
					from Game
					where Platform like 'PC%') 
group by Name_Game
order by sum(Estimate)desc

--more 1 Platform
select Name_Studio
from Game
where Platform like '%,%'