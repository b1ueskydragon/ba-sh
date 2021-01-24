with courses_summary as (
    select class, count(distinct student) as students from courses group by class
)
select class from courses_summary where students >= 5
