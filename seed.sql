-- -----------------------------
-- Seed Companies (25)
-- -----------------------------
INSERT INTO companies (company_name, industry, website, city, state, notes) VALUES
('TechNova Inc.', 'Software', 'https://technova.com', 'San Francisco', 'CA', 'AI startup'),
('HealthBridge', 'Healthcare', 'https://healthbridge.org', 'Boston', 'MA', 'Nonprofit'),
('FinEdge Solutions', 'Finance', 'https://finedge.com', 'New York', 'NY', 'Fintech'),
('GreenGrid LLC', 'Energy', 'https://greengrid.io', 'Austin', 'TX', 'Renewables'),
('CloudPeak', 'Cloud Computing', 'https://cloudpeak.io', 'Seattle', 'WA', 'Cloud infra'),
('DataNest', 'Analytics', 'https://datanest.ai', 'Chicago', 'IL', 'Data platform'),
('SecureNet', 'Cybersecurity', 'https://securenet.com', 'Arlington', 'VA', 'Security firm'),
('EduSmart', 'Education', 'https://edusmart.org', 'Denver', 'CO', 'EdTech'),
('RetailFlow', 'Retail', 'https://retailflow.com', 'Atlanta', 'GA', 'E-commerce'),
('AutoDrive', 'Automotive', 'https://autodrive.ai', 'Detroit', 'MI', 'Autonomous vehicles'),
('BioCore', 'Biotech', 'https://biocore.com', 'San Diego', 'CA', 'Biotech'),
('MediaSpark', 'Media', 'https://mediaspark.tv', 'Los Angeles', 'CA', 'Streaming'),
('LogiChain', 'Logistics', 'https://logichain.com', 'Memphis', 'TN', 'Supply chain'),
('TravelLite', 'Travel', 'https://travellite.com', 'Orlando', 'FL', 'Travel booking'),
('AgriTechX', 'Agriculture', 'https://agritechx.com', 'Des Moines', 'IA', 'Agri analytics'),
('FoodFusion', 'Food', 'https://foodfusion.com', 'Dallas', 'TX', 'Food delivery'),
('GameForge', 'Gaming', 'https://gameforge.io', 'San Jose', 'CA', 'Game dev'),
('AdSphere', 'Advertising', 'https://adsphere.com', 'New York', 'NY', 'AdTech'),
('LegalEase', 'Legal', 'https://legalease.com', 'Washington', 'DC', 'Legal SaaS'),
('BuildRight', 'Construction', 'https://buildright.com', 'Phoenix', 'AZ', 'Construction tech'),
('Oceanic', 'Marine', 'https://oceanic.com', 'Miami', 'FL', 'Marine data'),
('SkyNetics', 'Aerospace', 'https://skynetics.com', 'Houston', 'TX', 'Aerospace'),
('FitLife', 'Fitness', 'https://fitlife.com', 'San Diego', 'CA', 'Fitness apps'),
('PetCare Plus', 'Pet Care', 'https://petcare.com', 'Portland', 'OR', 'Pet services'),
('CleanEarth', 'Environment', 'https://cleanearth.org', 'Boulder', 'CO', 'Sustainability');


INSERT INTO jobs 
(company_id, job_title, job_description, salary_min, salary_max, job_type, job_url, date_posted, is_active, requirements) VALUES
(1, 'Software Engineer', 'Develop and maintain software applications.', 85000, 140000, 'Full-time', 'https://technova.com/jobs/1', '2026-03-01', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Python', 'SQL'),
        'preferred_skills', JSON_ARRAY('Docker', 'Kubernetes'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 1
    )
),
(2, 'Data Scientist', 'Analyze and interpret complex data.', 90000, 150000, 'Full-time', 'https://healthbridge.org/jobs/2', '2026-03-02', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Python', 'Machine Learning'),
        'preferred_skills', JSON_ARRAY('R', 'PowerBI'),
        'education', "Master's",
        'experience_years', 2,
        'remote_option', 0
    )
),
(3, 'Product Manager', 'Oversee product lifecycle and strategy.', 95000, 160000, 'Full-time', 'https://finedge.com/jobs/3', '2026-03-03', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('SQL', 'Project Management'),
        'preferred_skills', JSON_ARRAY('Agile', 'Jira'),
        'education', "Bachelor's",
        'experience_years', 5,
        'remote_option', 1
    )
),
(4, 'UX Designer', 'Design engaging user experiences.', 70000, 120000, 'Contract', 'https://greengrid.io/jobs/4', '2026-03-04', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Figma', 'Adobe XD'),
        'preferred_skills', JSON_ARRAY('React', 'Sketch'),
        'education', "Bachelor's",
        'experience_years', 4,
        'remote_option', 1
    )
),
(5, 'QA Engineer', 'Test and assure software quality.', 65000, 110000, 'Full-time', 'https://cloudpeak.io/jobs/5', '2026-03-05', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Selenium', 'Python'),
        'preferred_skills', JSON_ARRAY('Jenkins', 'Docker'),
        'education', "Associate",
        'experience_years', 2,
        'remote_option', 0
    )
),
(1, 'DevOps Engineer', 'Manage infrastructure and deployment pipelines.', 90000, 150000, 'Full-time', 'https://technova.com/jobs/6', '2026-03-06', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Docker', 'Kubernetes'),
        'preferred_skills', JSON_ARRAY('AWS', 'Terraform'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 1
    )
),
(2, 'Backend Developer', 'Develop backend services and APIs.', 80000, 140000, 'Full-time', 'https://healthbridge.org/jobs/7', '2026-03-07', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Node.js', 'SQL'),
        'preferred_skills', JSON_ARRAY('GraphQL', 'Redis'),
        'education', "Bachelor's",
        'experience_years', 2,
        'remote_option', 0
    )
),
(3, 'Frontend Developer', 'Implement UI components and designs.', 75000, 130000, 'Full-time', 'https://finedge.com/jobs/8', '2026-03-08', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('React', 'HTML', 'CSS'),
        'preferred_skills', JSON_ARRAY('TypeScript', 'SASS'),
        'education', "Bachelor's",
        'experience_years', 2,
        'remote_option', 1
    )
),
(4, 'Business Analyst', 'Analyze business requirements and processes.', 70000, 120000, 'Contract', 'https://greengrid.io/jobs/9', '2026-03-09', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('SQL', 'Excel'),
        'preferred_skills', JSON_ARRAY('PowerBI', 'Tableau'),
        'education', "Master's",
        'experience_years', 3,
        'remote_option', 0
    )
),
(5, 'Marketing Specialist', 'Plan and execute marketing campaigns.', 60000, 100000, 'Full-time', 'https://cloudpeak.io/jobs/10', '2026-03-10', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('SEO', 'Content Creation'),
        'preferred_skills', JSON_ARRAY('SaaS', 'Email Marketing'),
        'education', "Bachelor's",
        'experience_years', 1,
        'remote_option', 1
    )
),
(1, 'Sales Manager', 'Lead sales team and strategy.', 80000, 130000, 'Full-time', 'https://technova.com/jobs/11', '2026-03-11', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('CRM', 'Negotiation'),
        'preferred_skills', JSON_ARRAY('Salesforce', 'Excel'),
        'education', "Bachelor's",
        'experience_years', 4,
        'remote_option', 0
    )
),
(2, 'Support Engineer', 'Provide technical support for clients.', 65000, 105000, 'Full-time', 'https://healthbridge.org/jobs/12', '2026-03-12', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('SQL', 'Linux'),
        'preferred_skills', JSON_ARRAY('Networking', 'Docker'),
        'education', "Associate",
        'experience_years', 2,
        'remote_option', 1
    )
),
(3, 'Full Stack Developer', 'Develop both frontend and backend systems.', 85000, 140000, 'Full-time', 'https://finedge.com/jobs/13', '2026-03-13', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('React', 'Node.js'),
        'preferred_skills', JSON_ARRAY('Docker', 'AWS'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 1
    )
),
(4, 'AI Engineer', 'Build and train AI models.', 95000, 160000, 'Full-time', 'https://greengrid.io/jobs/14', '2026-03-14', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Python', 'Machine Learning'),
        'preferred_skills', JSON_ARRAY('TensorFlow', 'PyTorch'),
        'education', "Master's",
        'experience_years', 5,
        'remote_option', 0
    )
),
(5, 'Cloud Architect', 'Design cloud architecture solutions.', 100000, 170000, 'Full-time', 'https://cloudpeak.io/jobs/15', '2026-03-15', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('AWS', 'Terraform'),
        'preferred_skills', JSON_ARRAY('Kubernetes', 'Docker'),
        'education', "Bachelor's",
        'experience_years', 6,
        'remote_option', 1
    )
),
(1, 'Database Administrator', 'Manage database systems and optimization.', 80000, 130000, 'Full-time', 'https://technova.com/jobs/16', '2026-03-16', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('SQL', 'NoSQL'),
        'preferred_skills', JSON_ARRAY('Backup/Restore', 'Replication'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 0
    )
),
(2, 'Mobile Developer', 'Develop mobile applications.', 75000, 130000, 'Contract', 'https://healthbridge.org/jobs/17', '2026-03-17', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('React Native', 'Swift'),
        'preferred_skills', JSON_ARRAY('TypeScript', 'Kotlin'),
        'education', "Bachelor's",
        'experience_years', 2,
        'remote_option', 1
    )
),
(3, 'Cybersecurity Analyst', 'Monitor and secure systems.', 90000, 150000, 'Full-time', 'https://finedge.com/jobs/18', '2026-03-18', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Linux', 'Python'),
        'preferred_skills', JSON_ARRAY('AWS', 'Penetration Testing'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 0
    )
),
(4, 'Technical Writer', 'Document software and processes.', 60000, 100000, 'Contract', 'https://greengrid.io/jobs/19', '2026-03-19', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Writing', 'Markdown'),
        'preferred_skills', JSON_ARRAY('Confluence'),
        'education', "Bachelor's",
        'experience_years', 2,
        'remote_option', 0
    )
),
(5, 'HR Manager', 'Manage recruitment and HR processes.', 70000, 120000, 'Full-time', 'https://cloudpeak.io/jobs/20', '2026-03-20', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Recruitment', 'Onboarding'),
        'preferred_skills', JSON_ARRAY('HRIS', 'Payroll'),
        'education', "Bachelor's",
        'experience_years', 4,
        'remote_option', 1
    )
),
(1, 'Data Engineer', 'Build and maintain data pipelines.', 85000, 145000, 'Full-time', 'https://technova.com/jobs/21', '2026-03-21', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Python', 'SQL'),
        'preferred_skills', JSON_ARRAY('Airflow', 'Spark'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 1
    )
),
(2, 'Network Engineer', 'Manage and maintain network infrastructure.', 80000, 140000, 'Full-time', 'https://healthbridge.org/jobs/22', '2026-03-22', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Cisco', 'Routing'),
        'preferred_skills', JSON_ARRAY('Firewall', 'VPN'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 0
    )
),
(3, 'Graphic Designer', 'Create graphics for web and print.', 60000, 100000, 'Contract', 'https://finedge.com/jobs/23', '2026-03-23', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Photoshop', 'Illustrator'),
        'preferred_skills', JSON_ARRAY('Figma', 'After Effects'),
        'education', "Bachelor's",
        'experience_years', 2,
        'remote_option', 1
    )
),
(4, 'SEO Specialist', 'Optimize websites for search engines.', 55000, 95000, 'Full-time', 'https://greengrid.io/jobs/24', '2026-03-24', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('SEO', 'Google Analytics'),
        'preferred_skills', JSON_ARRAY('Content Marketing', 'WordPress'),
        'education', "Bachelor's",
        'experience_years', 2,
        'remote_option', 1
    )
),
(5, 'Technical Recruiter', 'Recruit technical talent.', 60000, 105000, 'Full-time', 'https://cloudpeak.io/jobs/25', '2026-03-25', 1,
    JSON_OBJECT(
        'required_skills', JSON_ARRAY('Interviewing', 'Sourcing'),
        'preferred_skills', JSON_ARRAY('LinkedIn Recruiter', 'ATS'),
        'education', "Bachelor's",
        'experience_years', 3,
        'remote_option', 0
    )
);

INSERT INTO applications (job_id, application_date, status, resume_version, cover_letter_sent, interview_data) VALUES
(1, '2026-03-01', 'Applied', 'v1', 1, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(2, '2026-03-02', 'Screening', 'v1', 0, JSON_OBJECT(
    'response_date', '2026-03-05',
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', 'Needs more experience',
    'next_steps', 'Schedule screening call'
)),
(3, '2026-03-03', 'Interview', 'v2', 1, JSON_OBJECT(
    'response_date', '2026-03-06',
    'interview_date', '2026-03-10',
    'interview_rounds', 1,
    'interviewers', 'Alice Smith',
    'technical_questions', 'SQL joins, Python dictionaries',
    'feedback', 'Strong candidate',
    'next_steps', 'Second round scheduled'
)),
(4, '2026-03-04', 'Rejected', 'v1', 0, JSON_OBJECT(
    'response_date', '2026-03-08',
    'interview_date', '2026-03-07',
    'interview_rounds', 1,
    'interviewers', 'Bob Johnson',
    'technical_questions', 'REST APIs, Flask routes',
    'feedback', 'Not a good fit',
    'next_steps', NULL
)),
(5, '2026-03-05', 'Offer', 'v2', 1, JSON_OBJECT(
    'response_date', '2026-03-09',
    'interview_date', '2026-03-08',
    'interview_rounds', 2,
    'interviewers', 'Carol Lee, David Kim',
    'technical_questions', 'Data modeling, MySQL queries',
    'feedback', 'Excellent fit',
    'next_steps', 'Prepare offer letter'
)),
(6, '2026-03-06', 'Interview', 'v3', 1, JSON_OBJECT(
    'response_date', '2026-03-09',
    'interview_date', '2026-03-11',
    'interview_rounds', 1,
    'interviewers', 'Eve Thompson',
    'technical_questions', 'Django ORM, API integration',
    'feedback', 'Promising',
    'next_steps', 'Follow up for second interview'
)),
(7, '2026-03-07', 'Applied', 'v1', 0, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(8, '2026-03-08', 'Screening', 'v2', 1, JSON_OBJECT(
    'response_date', '2026-03-10',
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', 'Needs improvement',
    'next_steps', 'Schedule screening call'
)),
(9, '2026-03-09', 'Interview', 'v1', 1, JSON_OBJECT(
    'response_date', '2026-03-11',
    'interview_date', '2026-03-12',
    'interview_rounds', 2,
    'interviewers', 'Frank White, Grace Park',
    'technical_questions', 'Algorithms, Python data structures',
    'feedback', 'Good problem-solving skills',
    'next_steps', 'Final round pending'
)),
(10, '2026-03-10', 'Withdrawn', 'v1', 0, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(11, '2026-03-11', 'Applied', 'v1', 1, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(12, '2026-03-12', 'Screening', 'v2', 0, JSON_OBJECT(
    'response_date', '2026-03-15',
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', 'Weak experience',
    'next_steps', 'Reschedule'
)),
(13, '2026-03-13', 'Interview', 'v1', 1, JSON_OBJECT(
    'response_date', '2026-03-16',
    'interview_date', '2026-03-18',
    'interview_rounds', 1,
    'interviewers', 'Helen Green',
    'technical_questions', 'Python, APIs',
    'feedback', 'Solid candidate',
    'next_steps', 'Second interview planned'
)),
(14, '2026-03-14', 'Offer', 'v3', 1, JSON_OBJECT(
    'response_date', '2026-03-17',
    'interview_date', '2026-03-16',
    'interview_rounds', 2,
    'interviewers', 'Ian Black, Jane White',
    'technical_questions', 'Machine Learning models',
    'feedback', 'Excellent fit',
    'next_steps', 'Prepare offer letter'
)),
(15, '2026-03-15', 'Applied', 'v1', 0, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(16, '2026-03-16', 'Interview', 'v2', 1, JSON_OBJECT(
    'response_date', '2026-03-18',
    'interview_date', '2026-03-19',
    'interview_rounds', 1,
    'interviewers', 'Kelly Adams',
    'technical_questions', 'Database design, SQL',
    'feedback', 'Promising',
    'next_steps', 'Schedule second round'
)),
(17, '2026-03-17', 'Screening', 'v1', 0, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', 'Lacking key skills',
    'next_steps', 'Follow up'
)),
(18, '2026-03-18', 'Applied', 'v1', 1, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(19, '2026-03-19', 'Interview', 'v2', 1, JSON_OBJECT(
    'response_date', '2026-03-21',
    'interview_date', '2026-03-22',
    'interview_rounds', 2,
    'interviewers', 'Laura Hill, Mark Scott',
    'technical_questions', 'UI/UX design, Figma',
    'feedback', 'Strong candidate',
    'next_steps', 'Final review'
)),
(20, '2026-03-20', 'Offer', 'v3', 1, JSON_OBJECT(
    'response_date', '2026-03-22',
    'interview_date', '2026-03-21',
    'interview_rounds', 1,
    'interviewers', 'Nancy Drew',
    'technical_questions', 'Project management, Agile',
    'feedback', 'Excellent fit',
    'next_steps', 'Send offer letter'
)),
(21, '2026-03-21', 'Applied', 'v1', 0, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(22, '2026-03-22', 'Interview', 'v2', 1, JSON_OBJECT(
    'response_date', '2026-03-24',
    'interview_date', '2026-03-25',
    'interview_rounds', 1,
    'interviewers', 'Olivia King',
    'technical_questions', 'ETL pipelines, Python',
    'feedback', 'Promising',
    'next_steps', 'Schedule follow-up'
)),
(23, '2026-03-23', 'Screening', 'v1', 0, JSON_OBJECT(
    'response_date', '2026-03-25',
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', 'Weak on cloud skills',
    'next_steps', 'Further review'
)),
(24, '2026-03-24', 'Applied', 'v1', 1, JSON_OBJECT(
    'response_date', NULL,
    'interview_date', NULL,
    'interview_rounds', NULL,
    'interviewers', NULL,
    'technical_questions', NULL,
    'feedback', NULL,
    'next_steps', NULL
)),
(25, '2026-03-25', 'Interview', 'v3', 1, JSON_OBJECT(
    'response_date', '2026-03-27',
    'interview_date', '2026-03-28',
    'interview_rounds', 2,
    'interviewers', 'Peter Parker, Mary Jane',
    'technical_questions', 'React, APIs',
    'feedback', 'Very strong candidate',
    'next_steps', 'Finalize offer'
));

INSERT INTO contacts (company_id, contact_name, job_title, email, phone, linkedin_url, notes) VALUES
(1,'Alice Johnson','Recruiter','alice@technova.com','111-111-1111','linkedin.com/alice','HR'),
(2,'Bob Smith','Manager','bob@health.com','222-222-2222','linkedin.com/bob','Manager'),
(3,'Carol Lee','CTO','carol@finedge.com','333-333-3333','linkedin.com/carol','CTO'),
(4,'David Kim','Lead','david@grid.com','444-444-4444','linkedin.com/david','Lead'),
(5,'Eva Green','HR','eva@cloud.com','555-555-5555','linkedin.com/eva','HR'),
(6,'Frank Hall','Manager','frank@data.com','666-666-6666','linkedin.com/frank','Mgr'),
(7,'Grace Park','Analyst','grace@secure.com','777-777-7777','linkedin.com/grace','Analyst'),
(8,'Henry Adams','Designer','henry@edu.com','888-888-8888','linkedin.com/henry','UX'),
(9,'Ivy Chen','Dev','ivy@retail.com','999-999-9999','linkedin.com/ivy','Frontend'),
(10,'Jack Brown','Engineer','jack@auto.com','101-101-1010','linkedin.com/jack','AI'),
(11,'Karen White','Scientist','karen@bio.com','202-202-2020','linkedin.com/karen','Lab'),
(12,'Leo Black','Editor','leo@media.com','303-303-3030','linkedin.com/leo','Media'),
(13,'Mia Wong','Analyst','mia@logi.com','404-404-4040','linkedin.com/mia','Logistics'),
(14,'Noah Scott','Agent','noah@travel.com','505-505-5050','linkedin.com/noah','Travel'),
(15,'Olivia King','Analyst','olivia@agri.com','606-606-6060','linkedin.com/olivia','Agri'),
(16,'Paul Young','Manager','paul@food.com','707-707-7070','linkedin.com/paul','Food'),
(17,'Quinn Fox','Dev','quinn@game.com','808-808-8080','linkedin.com/quinn','Game'),
(18,'Ryan Hill','Marketer','ryan@ads.com','909-909-9090','linkedin.com/ryan','Marketing'),
(19,'Sara Stone','Legal','sara@legal.com','111-222-3333','linkedin.com/sara','Legal'),
(20,'Tom Baker','Manager','tom@build.com','222-333-4444','linkedin.com/tom','Build'),
(21,'Uma Reed','Analyst','uma@ocean.com','333-444-5555','linkedin.com/uma','Marine'),
(22,'Victor Cruz','Engineer','victor@sky.com','444-555-6666','linkedin.com/victor','Aero'),
(23,'Wendy Park','Coach','wendy@fit.com','555-666-7777','linkedin.com/wendy','Fitness'),
(24,'Xander Cole','Assistant','xander@pet.com','666-777-8888','linkedin.com/xander','Vet'),
(25,'Yara Diaz','Scientist','yara@clean.com','777-888-9999','linkedin.com/yara','Env');
