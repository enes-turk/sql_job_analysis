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
WITH remote_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE job_work_from_home = true 
        AND job_title_short = 'Data Engineer'
)

SELECT 
    sjd.skill_id,
    COUNT(rj.job_id) AS job_count,
    sd.skills AS skill_name
FROM 
    skills_job_dim AS sjd
JOIN 
    remote_jobs AS rj ON rj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
ORDER BY 
    job_count DESC
LIMIT 15;

-- data scientist role
WITH remote_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE job_work_from_home = true 
        AND job_title_short = 'Data Scientist'
)

SELECT 
    sjd.skill_id,
    COUNT(rj.job_id) AS job_count,
    sd.skills AS skill_name
FROM 
    skills_job_dim AS sjd
JOIN 
    remote_jobs AS rj ON rj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
GROUP BY 
    sjd.skill_id, sd.skills
ORDER BY 
    job_count DESC
LIMIT 15;

-- data analyst role
WITH remote_jobs AS (
    SELECT job_id
    FROM job_postings_fact
    WHERE job_work_from_home = true 
        AND job_title_short = 'Data Analyst'
)

SELECT
    sjd.skill_id,
    COUNT(rj.job_id) AS job_count,
    sd.skills AS skill_name
FROM 
    skills_job_dim AS sjd
JOIN 
    remote_jobs AS rj ON rj.job_id = sjd.job_id
LEFT JOIN 
    skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE
    sjd.skill_id <> 186
GROUP BY 
    sjd.skill_id, sd.skills
ORDER BY 
    job_count DESC
LIMIT 15;