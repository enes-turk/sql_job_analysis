-- data role salaries
WITH jobs AS (
    SELECT
        job_id,
        CASE 
            WHEN job_title_short = 'Senior Data Scientist' THEN 'Data Scientist'
            WHEN job_title_short = 'Senior Data Engineer' THEN 'Data Engineer'
            WHEN job_title_short = 'Senior Data Analyst' THEN 'Data Analyst'
            ELSE job_title_short
        END AS job_title_short,
        salary_year_avg
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
)
SELECT
    job_title_short,
    COUNT(job_id) AS job_count,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM jobs
GROUP BY
    job_title_short;

-- skill demand for roles
-- data engineer role
WITH data_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE job_title_short = 'Data Engineer'
)

SELECT
    sd.skills AS skill_name,
    COUNT(dj.job_id) AS job_count
FROM 
    skills_job_dim AS sjd
JOIN 
    data_jobs AS dj ON dj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
ORDER BY 
    job_count DESC
LIMIT 15;

-- data scientist role
WITH data_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE job_title_short = 'Data Scientist'
)

SELECT
    sd.skills AS skill_name,
    COUNT(dj.job_id) AS job_count
FROM 
    skills_job_dim AS sjd
JOIN 
    data_jobs AS dj ON dj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
ORDER BY 
    job_count DESC
LIMIT 15;

-- data analyst role
WITH data_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE job_title_short = 'Data Analyst'
)

SELECT
    sd.skills AS skill_name,
    COUNT(dj.job_id) AS job_count
FROM 
    skills_job_dim AS sjd
JOIN 
    data_jobs AS dj ON dj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
ORDER BY 
    job_count DESC
LIMIT 15;