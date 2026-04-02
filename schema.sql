-- Drop tables if they exist
DROP TABLE IF EXISTS applications;
DROP TABLE IF EXISTS jobs;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts;

CREATE TABLE companies(
	company_id INT PRIMARY KEY AUTO_INCREMENT,
	company_name VARCHAR(100) NOT NULL,
	industry VARCHAR(50),
	website VARCHAR(200),
	city VARCHAR(50),
	state VARCHAR(50),
	notes TEXT
);

CREATE TABLE jobs (
	job_id INT PRIMARY KEY AUTO_INCREMENT,
	company_id INT,
	job_title VARCHAR(100) NOT NULL,
	job_description VARCHAR(200),
	job_type ENUM('Full-time', 'Part-time', 'Contract', 'Internship'),
	salary_min INT, salary_max INT,
	job_url VARCHAR(300),
	date_posted DATE,
	is_active BOOLEAN,
	requirements JSON,
	FOREIGN KEY (company_id) 
	    REFERENCES companies(company_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE applications (
	application_id INT PRIMARY KEY AUTO_INCREMENT,
	job_id INT,
	application_date DATE NOT NULL,
	status ENUM('Applied', 'Screening', 'Interview', 'Offer', 'Rejected', 'Withdrawn'),
	resume_version VARCHAR(50),
	cover_letter_sent BOOLEAN,
	interview_data JSON,
	FOREIGN KEY (job_id) 
	    REFERENCES jobs(job_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY AUTO_INCREMENT,
	company_id INT REFERENCES companies(company_id),
	contact_name VARCHAR(100) NOT NULL,
	job_title VARCHAR(100),
	email VARCHAR(100),
	phone VARCHAR(20),
	linkedin_url VARCHAR (200),
	notes TEXT,
	FOREIGN KEY (company_id) 
	    REFERENCES companies(company_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
