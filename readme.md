# Exploring the Data Job Market

## Introduction

Welcome to a comprehensive exploration of the ever-evolving data job market! This project delves into the intricacies of data-related roles, shedding light on the demand for such positions, the sought-after skills by employers, and the relationship between skillsets and salary levels within the domain of multiple data roles.

## Dataset Information

The dataset for this project was compiled from a wide range of sources, primarily online platforms like LinkedIn and other job posting websites, spanning the entirety of 2023 and covering global locations. It includes full-time, part-time, and remote positions, focusing on yearly salary offerings. Notably, the dataset doesn't distinguish between senior, mid-level, and junior roles, providing a holistic view of the data job market. 

Through a detailed analysis, this project aims to uncover key insights into trends and patterns, offering valuable information for anyone curious in the realm of data.

## Questions Explored

Throughout this project, I aimed to address the following key questions using SQL queries:
- What is the demand like for data engineers, data scientists, and data analysts, and what are their average salaries?
- Which skills are most sought after for data engineers, data scientists, and data analysts?
- How do specific skills correlate with higher salary levels in the data domain?

## Tools Utilized

To conduct this comprehensive analysis of the data analyst job market, I leveraged several essential tools:
- **SQL**: The primary tool for querying the database and extracting valuable insights.
- **PostgreSQL**: Chosen as the database management system for its efficiency in handling job posting data.
- **Python**: Essential tool for all necessary data gathering, processing and visualization tasks.
  - **psycopg2**: Python adapter for PostgreSQL, facilitating seamless database interactions.
  - **pandas**: Vital for data manipulation and analysis tasks.
  - **matplotlib**: Employed for generating insightful visualizations.
  - **gdown**: Utilized for downloading files from Google Drive, enhancing data acquisition capabilities.

## The Analysis

### Demand and Average Salary Insights

In exploring the demand and average salary across various data roles, I conducted a thorough analysis of the database to glean comprehensive insights into the number of job postings and corresponding salary distributions for each role.

![demand_salary_img](/assets/1_asset.png)

The primary job demand is observed to be concentrated within three prominent data roles: Data Scientist, Data Engineer, and Data Analyst.

Among these roles, Data Scientist positions command the highest salaries, followed closely by Data Engineer and Machine Learning Engineers. While Data Analyst and Business Analyst roles trail behind in salary, they still maintain significant job demand. This is indicative of the prominence of more specialized data roles in the sector, without diminishing the overall demand for analytical talent.

### Skills in High Demand

By analyzing the frequency of specific skills mentioned in job postings, I identified the most sought-after skills for data analysts, data engineers, and data scientists, shedding light on the skillsets crucial for success in the data analytics field.

![demand_skill_img](/assets/2_asset.png)

Here are breakdowns of the most demanded skills for Data Engineer, Data Scientist and Data Analyst roles in 2023:

#### Data Engineer:
- **SQL and Python**: Foundational skills for data manipulation and processing, with Python often used for scripting and automation tasks.
- **Cloud Systems (AWS, GCP, Azure)**: Increasing demand for expertise in cloud platforms, as businesses migrate their data infrastructure to the cloud for scalability, flexibility, and cost-effectiveness.
- **Data Pipeline Frameworks (Airflow)**: Proficiency in data pipeline orchestration tools like Apache Airflow is crucial for automating and managing complex data workflows efficiently.
- **Data Pipeline Optimization Tools (Databricks, Spark)**: Skills in platforms like Databricks and Apache Spark are sought after for optimizing data pipelines, handling large-scale data processing, and enabling real-time analytics.

#### Data Scientist:
- **SQL, Python and R**: Essential for data manipulation, analysis, and building machine learning models. SQL is used for querying databases, while Python and R serves as the primary programming languages for data preprocessing, model development, and evaluation.
- **Machine Learning Tools (PyTorch, TensorFlow)**: High emphasis on proficiency in machine learning frameworks like PyTorch and TensorFlow for building and deploying advanced machine learning models.
- **Data Visualization Tools**: Strong skills in data visualization tools such as Matplotlib, Seaborn, and Plotly are crucial for communicating insights effectively and aiding in decision-making processes.

#### Data Analysts:
- **SQL and Excel**: remain fundamental, emphasizing the need for strong foundational skills in data processing and spreadsheet manipulation.
- **Programming and Visualization Tools**: Skills like Python, Tableau, and Power BI are essential, pointing towards the increasing importance of technical skills in data storytelling and decision support.


### Skills and Salary Associations

Furthermore, I delved into the correlation between skills and salary levels within the data industry, aiming to uncover which skills are associated with higher salaries and provide actionable insights for professionals seeking to maximize their earning potential.

![salary_skill_img](/assets/3_asset.png)

Among the skills analyzed in 2023, proficiency in NoSQL database systems such as MongoDB and Cassandra emerged as strongly correlated with higher salary levels, particularly benefiting individuals aspiring to excel as data engineers. Following closely, Kafka, with its capability to facilitate real-time data streaming and processing, significantly contributes to elevating earning potential in roles requiring data ingestion and stream processing.

For professionals targeting data scientist roles, mastery of machine learning tools like PyTorch and TensorFlow proves instrumental in commanding higher salaries. Additionally, expertise in Apache Airflow, a workflow management platform, and Snowflake, a cloud data platform, is highly valued for their roles in orchestrating data pipelines and facilitating scalable data warehousing solutions.

Interestingly, skills traditionally associated with data analyst positions also gain considerable value when complemented by high-level tools commonly utilized across various data roles. Proficiency in Spark for distributed data processing, Databricks for collaborative analytics, and Snowflake for cloud-based data warehousing significantly enhances earning potential in data analyst roles, bridging the gap between analytical expertise and technical proficiency.


## Key Insights
- **Job Demand and Salary Distribution**: Data Scientist, Data Engineer, and Data Analyst are the primary roles in high demand, with Data Scientists commanding the highest salaries. However, Data Engineers and Machine Learning Engineers also enjoy lucrative compensation. Despite lower salaries, Data Analyst roles maintain significant demand, showcasing diverse opportunities in the data domain.

- **Top Skills in Demand**: SQL, Python, and Cloud Systems (AWS, GCP, Azure) are foundational skills sought after across various data roles. Specialized tools such as Apache Airflow, Databricks, and Spark are highly valued for optimizing data pipelines and enabling advanced analytics.

- **Correlation between Skills and Salary**: Proficiency in NoSQL database systems (MongoDB, Cassandra), Kafka, and machine learning frameworks (PyTorch, TensorFlow) correlates strongly with higher salary levels across data roles. This emphasizes the importance of acquiring specialized skills aligned with industry trends to maximize earning potential.

## Conclusion
This project has not only improved my SQL skills but has also provided invaluable insights into the intricacies of the data analyst job market. By understanding the demand trends, coveted skillsets, and their impact on salary levels, this analysis serves as a valuable resource for individuals seeking to navigate and thrive in the competitive landscape of data analytics careers. Through strategic alignment with industry demands, professionals can enhance their marketability and position themselves for success in the dynamic data job market.
