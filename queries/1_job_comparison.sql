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

SELECT *
FROM jobs;