-- top skill demand and salary for all data roles
WITH data_jobs AS (
    SELECT 
        job_id,
        salary_year_avg
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
        AND job_title_short IN ('Data Engineer', 'Data Scientist', 'Data Analyst')
)

SELECT
    sd.skills AS skill_name,
    COUNT(dj.job_id) AS job_count,
    ROUND(AVG(dj.salary_year_avg), 0) AS salary
FROM 
    skills_job_dim AS sjd
JOIN 
    data_jobs AS dj ON dj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
HAVING
    COUNT(dj.job_id) > 100
ORDER BY 
    salary DESC
LIMIT 15;

-- top skill demand and salary for Data Engineer role
WITH data_jobs AS (
    SELECT 
        job_id,
        salary_year_avg
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
        AND job_title_short = 'Data Engineer'
)

SELECT
    sd.skills AS skill_name,
    COUNT(dj.job_id) AS job_count,
    ROUND(AVG(dj.salary_year_avg), 0) AS salary
FROM 
    skills_job_dim AS sjd
JOIN 
    data_jobs AS dj ON dj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
HAVING
    COUNT(dj.job_id) > 100
ORDER BY 
    salary DESC
LIMIT 15;

-- top skill demand and salary for Data Scientist role
WITH data_jobs AS (
    SELECT 
        job_id,
        salary_year_avg
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
        AND job_title_short = 'Data Scientist'
)

SELECT
    sd.skills AS skill_name,
    COUNT(dj.job_id) AS job_count,
    ROUND(AVG(dj.salary_year_avg), 0) AS salary
FROM 
    skills_job_dim AS sjd
JOIN 
    data_jobs AS dj ON dj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
HAVING
    COUNT(dj.job_id) > 100
ORDER BY 
    salary DESC
LIMIT 15;

-- top skill demand and salary for Data Analyst role
WITH data_jobs AS (
    SELECT 
        job_id,
        salary_year_avg
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
        AND job_title_short = 'Data Analyst'
)

SELECT
    sd.skills AS skill_name,
    COUNT(dj.job_id) AS job_count,
    ROUND(AVG(dj.salary_year_avg), 0) AS salary
FROM 
    skills_job_dim AS sjd
JOIN 
    data_jobs AS dj ON dj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
HAVING
    COUNT(dj.job_id) > 100
ORDER BY 
    salary DESC
LIMIT 15;