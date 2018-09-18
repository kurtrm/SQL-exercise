-- https://en.wikibooks.org/wiki/SQL_Exercises/Scientists
-- 6.1 List all the scientists' names, their projects' names, 
    -- and the hours worked by that scientist on each project, 
    -- in alphabetical order of project name, then scientist name.
select scientists.name, projects.name, projects.hours
from assignedto
join scientists
on assignedto.scientist = scientists.ssn
join projects on projects.code = assignedto.project
order by projects.name, scientists.name;
-- 6.2 Select the project names which are not assigned yet
select projects.name
from projects
where projects.code not in (select project from assignedto);
