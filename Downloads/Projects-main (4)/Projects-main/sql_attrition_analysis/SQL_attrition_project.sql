use sqlproj;

select * from attrition;

select count(*) from attrition;

-select count(*) from attrition
where Attrition = 1;

--overtime 
select Overtime, count(*) as Attrition_employees
from attrition
where Attrition = 1
group by OverTime;

-- Presence of rating and attrition (It is playing an important role in terms of attrition)
select performancerating, count(*) as Attrition_employees
from attrition
where Attrition = 1
group by PerformanceRating;

-- Attrition based on age buckets
select
case when age <= 29 then '18-29'
when age > 29 and age <= 39 then '30-39'
when age > 39 and age <= 49 then '40-49'
when age > 49 and age <= 59 then '50-59'
else '60 or above'
end as 'Age_bucket', count(*) as Attrition_count
from attrition
where Attrition = 1
group by 
case when age <= 29 then '18-29'
when age > 29 and age <= 39 then '30-39'
when age > 39 and age <= 49 then '40-49'
when age > 49 and age <= 59 then '50-59'
else '60 or above'
end
order by Attrition_count desc;

-- Presence of salary hike and attrition count
select percentsalaryhike, count(*) as Attrition_count
from attrition
where Attrition = 1
group by PercentSalaryHike
order by Attrition_count;

--- Impact of environment satisfaction, job satisfaction and relationship satisfaction with a condition of mothly income should be greater than avg income
select environmentsatisfaction, jobsatisfaction, relationshipsatisfaction, count(*) as Attrition_count
from attrition
where Attrition = 1 and MonthlyIncome > (select AVG(monthlyincome) from attrition)
group by environmentsatisfaction, jobsatisfaction, relationshipsatisfaction
order by Attrition_count desc;

-- Relation between promotion and attrition
-- Buckets will be 0-3, 4-7, 8-10, and above 10
select 
case when yearssincelastpromotion <= 3 then '0-3'
when yearssincelastpromotion > 3 and yearssincelastpromotion <= 7 then '4-7'
when yearssincelastpromotion > 7 and yearssincelastpromotion <= 10 then '8-10'
else '10 or above'
end as 'promotion_bucket', count(*) as Attrition_Count
from attrition
where Attrition = 1
group by
case when yearssincelastpromotion <= 3 then '0-3'
when yearssincelastpromotion > 3 and yearssincelastpromotion <= 7 then '4-7'
when yearssincelastpromotion > 7 and yearssincelastpromotion <= 10 then '8-10'
else '10 or above'
end 
order by Attrition_Count desc;

--Attrition based on department and job role
select department, jobrole, count(*) as Attrition_Count
from attrition
where Attrition = 1
group by department, jobrole
order by Attrition_Count desc;

-- Attrition based on business travel and gender
select businesstravel, gender, count(*) as Attrition_Count
from attrition
where Attrition = 1
group by BusinessTravel, Gender
order by Attrition_Count desc;


