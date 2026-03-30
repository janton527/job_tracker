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
(company_id, job_title, job_description, salary_min, salary_max, job_type, job_url, date_posted, requirements)
VALUES

(1,'Software Engineer','Develop backend systems.',85000,140000,'Full-time','https://technova.com/jobs/1','2026-03-01',
 JSON_OBJECT('required_skills','Python, SQL','preferred_skills','Docker','education','Bachelors','experience_years',3,'remote_option',1)),

(2,'Data Scientist','Analyze datasets and build models.',90000,150000,'Full-time','https://healthbridge.org/jobs/2','2026-03-02',
 JSON_OBJECT('required_skills','Python, ML','preferred_skills','TensorFlow','education','Masters','experience_years',2,'remote_option',0)),

(3,'Product Manager','Lead product lifecycle.',95000,160000,'Full-time','https://finedge.com/jobs/3','2026-03-03',
 JSON_OBJECT('required_skills','Agile, SQL','preferred_skills','Scrum','education','Bachelors','experience_years',5,'remote_option',1)),

(4,'UX Designer','Design UI/UX experiences.',70000,120000,'Contract','https://greengrid.io/jobs/4','2026-03-04',
 JSON_OBJECT('required_skills','Figma','preferred_skills','Adobe XD','education','Bachelors','experience_years',3,'remote_option',1)),

(5,'QA Engineer','Test applications.',65000,110000,'Full-time','https://cloudpeak.io/jobs/5','2026-03-05',
 JSON_OBJECT('required_skills','Testing, SQL','preferred_skills','Selenium','education','Associate','experience_years',2,'remote_option',0)),

(6,'DevOps Engineer','Maintain CI/CD pipelines.',90000,150000,'Full-time','https://technova.com/jobs/6','2026-03-06',
 JSON_OBJECT('required_skills','Docker, Kubernetes','preferred_skills','AWS','education','Bachelors','experience_years',3,'remote_option',1)),

(7,'Backend Developer','Build APIs.',80000,140000,'Full-time','https://healthbridge.org/jobs/7','2026-03-07',
 JSON_OBJECT('required_skills','Node.js, SQL','preferred_skills','GraphQL','education','Bachelors','experience_years',2,'remote_option',0)),

(8,'Frontend Developer','Build UI components.',75000,130000,'Full-time','https://finedge.com/jobs/8','2026-03-08',
 JSON_OBJECT('required_skills','React','preferred_skills','TypeScript','education','Bachelors','experience_years',2,'remote_option',1)),

(9,'Business Analyst','Analyze requirements.',70000,120000,'Contract','https://greengrid.io/jobs/9','2026-03-09',
 JSON_OBJECT('required_skills','SQL, Excel','preferred_skills','PowerBI','education','Masters','experience_years',3,'remote_option',0)),

(10,'Marketing Specialist','Run campaigns.',60000,100000,'Full-time','https://cloudpeak.io/jobs/10','2026-03-10',
 JSON_OBJECT('required_skills','SEO','preferred_skills','Google Ads','education','Bachelors','experience_years',1,'remote_option',1)),

(11,'Sales Manager','Manage sales team.',80000,130000,'Full-time','https://technova.com/jobs/11','2026-03-11',
 JSON_OBJECT('required_skills','CRM','preferred_skills','Salesforce','education','Bachelors','experience_years',4,'remote_option',0)),

(12,'Support Engineer','Handle customer issues.',65000,105000,'Full-time','https://healthbridge.org/jobs/12','2026-03-12',
 JSON_OBJECT('required_skills','Linux','preferred_skills','Networking','education','Associate','experience_years',2,'remote_option',1)),

(13,'Full Stack Developer','Work across stack.',85000,140000,'Full-time','https://finedge.com/jobs/13','2026-03-13',
 JSON_OBJECT('required_skills','React, Node','preferred_skills','Docker','education','Bachelors','experience_years',3,'remote_option',1)),

(14,'AI Engineer','Build ML models.',95000,160000,'Full-time','https://greengrid.io/jobs/14','2026-03-14',
 JSON_OBJECT('required_skills','Python, ML','preferred_skills','PyTorch','education','Masters','experience_years',5,'remote_option',0)),

(15,'Cloud Architect','Design cloud infra.',100000,170000,'Full-time','https://cloudpeak.io/jobs/15','2026-03-15',
 JSON_OBJECT('required_skills','AWS','preferred_skills','Terraform','education','Bachelors','experience_years',6,'remote_option',1)),

(16,'Database Admin','Maintain DB systems.',80000,130000,'Full-time','https://technova.com/jobs/16','2026-03-16',
 JSON_OBJECT('required_skills','SQL','preferred_skills','NoSQL','education','Bachelors','experience_years',3,'remote_option',0)),

(17,'Mobile Developer','Build mobile apps.',75000,130000,'Contract','https://healthbridge.org/jobs/17','2026-03-17',
 JSON_OBJECT('required_skills','React Native','preferred_skills','Swift','education','Bachelors','experience_years',2,'remote_option',1)),

(18,'Cybersecurity Analyst','Monitor threats.',90000,150000,'Full-time','https://finedge.com/jobs/18','2026-03-18',
 JSON_OBJECT('required_skills','Security, Linux','preferred_skills','AWS','education','Masters','experience_years',4,'remote_option',1)),

(19,'Technical Writer','Write documentation.',60000,100000,'Contract','https://greengrid.io/jobs/19','2026-03-19',
 JSON_OBJECT('required_skills','Writing','preferred_skills','Markdown','education','Bachelors','experience_years',2,'remote_option',0)),

(20,'IT Project Manager','Manage IT projects.',90000,150000,'Full-time','https://cloudpeak.io/jobs/20','2026-03-20',
 JSON_OBJECT('required_skills','Agile','preferred_skills','Scrum','education','Masters','experience_years',5,'remote_option',1)),

(21,'Network Engineer','Manage networks.',80000,140000,'Full-time','https://technova.com/jobs/21','2026-03-21',
 JSON_OBJECT('required_skills','Networking','preferred_skills','Cisco','education','Bachelors','experience_years',3,'remote_option',1)),

(22,'Data Engineer','Build pipelines.',85000,145000,'Full-time','https://healthbridge.org/jobs/22','2026-03-22',
 JSON_OBJECT('required_skills','Python, SQL','preferred_skills','Spark','education','Bachelors','experience_years',3,'remote_option',0)),

(23,'Solutions Architect','Design systems.',100000,170000,'Full-time','https://finedge.com/jobs/23','2026-03-23',
 JSON_OBJECT('required_skills','AWS','preferred_skills','Docker','education','Masters','experience_years',6,'remote_option',1)),

(24,'HR Tech Specialist','Manage HR tools.',65000,110000,'Full-time','https://greengrid.io/jobs/24','2026-03-24',
 JSON_OBJECT('required_skills','HRIS','preferred_skills','Excel','education','Bachelors','experience_years',2,'remote_option',0)),

(25,'UI Developer','Build UI components.',75000,125000,'Full-time','https://cloudpeak.io/jobs/25','2026-03-25',
 JSON_OBJECT('required_skills','React','preferred_skills','Figma','education','Bachelors','experience_years',2,'remote_option',1));

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

INSERT INTO contacts (company_id, contact_name, title, email, phone, linkedin_url, notes) VALUES
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
