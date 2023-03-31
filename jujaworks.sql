DROP DATABASE IF EXISTS jujaworks;
CREATE DATABASE jujaworks;
USE jujaworks;

CREATE TABLE personalData(
email_address VARCHAR(100) PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
date_of_birth VARCHAR(100),
location VARCHAR(100),
gender VARCHAR(100),
phone_number VARCHAR(100),
id_photo longblob
);

INSERT INTO personalData(email_address, first_name, last_name, date_of_birth, location, gender, phone_number) VALUES
("danieljames@alx.com", "Daniel", "James", "1989-07-19", "Juja", "Male", "254714790014"),
("lilianchege@jkuat.ac.ke", "Lilian", "Chege", "1994-02-27", "Kalimoni", "Female", "24711599840"),
("beatricendinda@amazon.com", "Beatrice", "Ndinda", "2002-11-30", "Theta", "Female", "254707014002"),
("testing@gmail.com", "Denzel", "Washington", "2000-09-30", "Witeithie", "Male", "254712345678"),
("alphanice@alx.com", "Alpha", "Shirima", "1999-12-22", "Oasis", "Female", "254799063225"),
("njeristacey270@gmail.com", "Billy", "Butcher", "2002-09-30", "Thika", "Male", "254704149336");

CREATE TABLE tertiaryEducation(
eduation_id INT PRIMARY KEY AUTO_INCREMENT,
email_address VARCHAR(100),
institution VARCHAR(100),
degree VARCHAR(100),
field VARCHAR(100),
start_date VARCHAR(100),
end_date VARCHAR(100)
);

INSERT INTO jujaworks.tertiaryeducation(email_address, institution, degree, field, start_date, end_date) VALUES
("alphanice@alx.com", "University of Nairobi", "Diploma", "Electrical Egineering", "2019-09-01", "2022-07-01"),
("beatricendinda@amazon.com", "Jomo Kenyatta University of Agriculture and Technology", "Bachelor's Degree", "Accounting", "2016-09-01", "2021-04-01"),
("danieljames@alx.com", "Maseno University", "Masters's Degree", "Physicall Science", "2017-05-01", "2020-04-01"),
("lilianchege@jkuat.ac.ke", "Dedan Kimathi University", "Bachelor's Degree", "Enterpreneurship", "2020-09-01", "Current"),
("testing@gmail.com", "Jomo Kenyatta University of Agriculture and Technology", "Diploma", "Information Technology", "2019-09-01", "2022-04-01"),
("njeristacey270@gmail.com", "Jomo Kenyatta University of Agriculture and Technology", "Certificate", "Information Technology", "2017-04-01", "2022-07-01");


CREATE TABLE highschoolEducation(
education_id INT PRIMARY KEY AUTO_INCREMENT,
email_address VARCHAR(100),
institution VARCHAR(100),
grade VARCHAR(100),
start_date VARCHAR(100),
end_date VARCHAR(100)
);

INSERT INTO jujaworks.highschooleducation(email_address, institution, grade, end_date, start_date) VALUES
("alphanice@alx.com", "Upper Hill", "B+", "2018-11-13", "2015-05-11"),
("beatricendinda@amazon.com", "Chogoria Girls", "C-", "2015-11-01", "2013-04-21"),
("danieljames@alx.com", "Muvuti High School", "A-", "2016-11-01", "2013-05-01"),
("lilianchege@jkuat.ac.ke", "Shimo La Tewa", "B", "2018-11-04", "2015-09-01"),
("testing@gmail.com", "Garba Tula High School", "D", "2018-11-01","2016-09-01"),
("njeristacey270@gmail.com", "Komarock Secondary", "C", "2016-11-01", "2014-04-01");


CREATE TABLE primaryEducation(
education_id INT PRIMARY KEY AUTO_INCREMENT,
email_address VARCHAR(100),
institution VARCHAR(100),
marks VARCHAR(100),
start_date VARCHAR(100),
end_date VARCHAR(100)
);

INSERT INTO jujaworks.primaryEducation(email_address, institution, marks, end_date, start_date) VALUES
("alphanice@alx.com", "Lakewood Academy", "339", "2015-11-13", "2012-05-11"),
("beatricendinda@amazon.com", "Wote Township", "401", "2012-11-01", "2010-04-21"),
("danieljames@alx.com", "Kiambu Primary", "362", "2012-11-01", "2009-05-01"),
("lilianchege@jkuat.ac.ke", "Precious Blood Academy", "274", "2014-11-04", "2008-09-01"),
("testing@gmail.com", "Lamu Cental Primary", "387", "2015-11-01","2010-09-01"),
("njeristacey270@gmail.com", "Komarock Primary", "354", "2013-11-01", "2011-04-01");


CREATE TABLE workExperience(
worK_id INT PRIMARY KEY auto_increment,
email_address VARCHAR(100),
job_title VARCHAR(100),
company VARCHAR(100),
employment_type VARCHAR(100),
start_date VARCHAR(100),
end_date VARCHAR(100),
skills VARCHAR(10000)
);

INSERT INTO jujaworks.workExperience(email_address, job_title, company, employment_type, start_date, end_date, skills) VALUES
("alphanice@alx.com", "Electrical Engineer", "General Motors", "Internship","2022-12-01", "Present", "Power Systems,Electromagnetics,Control Systems,Communication Systems"),
("beatricendinda@amazon.com", "Auditor", "Ngamia Haulers", "Full time", "2021-09-19", "2022-06-22", "Risk assessment, Internal controls, Audit planning, Data analysis"),
("danieljames@alx.com", "Lab Technician", "Baringo Girls", "Full time", "2021-01-17", "2023-01-31", "Quality control, Troubleshooting, Documentation, Time management, Attention to detail"),
("lilianchege@jkuat.ac.ke", "Salesperson", "Jumia", "Internship", "2022-09-01", "2022-12-24", "Negotiation, Communication, Prospecting, Closing deals, Relationship building, Product knowledge"),
("testing@gmail.com", "IT Personnel", "Simba Cement", "Part time", "2020-05-24", "2021-09-31", "Database management, System analysis, Cybersecurity, Technical writing"),
("njeristacey270@gmail.com", "IT Support", "Copy Cat", "Full time", "2019-04-01", "Present", "Customer service, Communication, Ticket management, Active listening");


CREATE TABLE skills(
entry_id INT PRIMARY KEY AUTO_INCREMENT,
email_address VARCHAR(100),
skills VARCHAR(10000)
);

INSERT INTO jujaworks.skills(email_address, skills) VALUES
("alphanice@alx.com", "Circuit Design,Programming,Power Systems,Electromagnetics,Control Systems,Communication Systems,Electronics"),
("beatricendinda@amazon.com", "Financial statement analysis, Risk assessment, Internal controls, Audit planning, Data analysis, Communication, Attention to detail, Accounting, Regulatory compliance, Time management"),
("danieljames@alx.com", "Lab safety, Experimental design, Instrumentation, Data analysis, Quality control, Troubleshooting, Documentation, Time management, Attention to detail, Communication"),
("lilianchege@jkuat.ac.ke", "Negotiation, Communication, Prospecting, Closing deals, Relationship building, Product knowledge, Time management, Persuasion, Customer service, Active listening"),
("testing@gmail.com", "Programming, Troubleshooting, Network administration, Database management, System analysis, Cybersecurity, Technical writing, Project management, Attention to detail, Communication"),
("njeristacey270@gmail.com", "Problem-solving, Technical troubleshooting, Customer service, Communication, Ticket management, Active listening, Remote support, Desktop support, Network troubleshooting, Attention to detail");

CREATE TABLE passwords(
email_address VARCHAR(100) PRIMARY KEY,
user_password VARCHAR(100));

INSERT INTO jujaworks.passwords(email_address, user_password) VALUES
("alphanice@alx.com", "Alphanice10."),
("beatricendinda@amazon.com", "Beat1992/"),
("danieljames@alx.com", "DaniMadrid99_"),
("lilianchege@jkuat.ac.ke", "Chegebest7."),
("testing@gmail.com", "."),
("njeristacey270@gmail.com", ".");


/*SQL FOR JOBS*/

CREATE TABLE job_posting(
job_id INT PRIMARY KEY AUTO_INCREMENT,
posted_by_email VARCHAR(100),
posted_date DATE,
job_title VARCHAR(100),
company VARCHAR(100),
location VARCHAR(100),
job_type VARCHAR(100),
brief_description VARCHAR(2000),
responsibilities VARCHAR(2000),
qualifications VARCHAR(2000),
skills VARCHAR(1000),
salary_range VARCHAR(100));

INSERT INTO jujaworks.job_posting(posted_by_email, posted_date, job_title, company, location, job_type, 
brief_description, responsibilities, qualifications, skills, salary_range) VALUES 
("beatricendinda@amazon.com","2023-03-24","Accountant", "Beatrice Enterprises", "Juja Main Gate","Part Time",
"An accountant is required for a job position, which involves handling financial and accounting activities for a company or an organization",
"Preparing and maintaining financial records\nManaging accounts payable and receivable\nHandling tax returns and audits\nGenerating financial reports",
"Strong knowledge of accounting principles and practices\nProficiency in relevant software and tools\nExcellent communication and analytical skills.\nDegree in accounting or a related field\nAt least 1 year work experience",
"Quickbooks\nProblem-solving skills\nOrganizational skills\nKnowledge of financial analysis and reporting\nAttention to detail",
"20000 to 25000 per month"),
('looz@gmail.com','2023-02-27', 'Cahier', 'DaPlace Minimart', 'Thika', 'Full time', 'In need of a cashier for a minimart. Responsible for selling throughout the day, from 5am to 9pm. Should be able to work well at peak hours and ensure security of the minimart', '1. Sell to customers at the minimart.\n2. Ensure security, no shoplifting.\n3. Report and schedule restocking orders.\n4. Cleaning the minimart\n5. Keeping time (opening at 5:30 am to 9pm)\n6. Reporting problemsbusiness issues to the owner', '1. Form four certificate and upper\n2. Work experience at a minimart or similar enviromnemt\n3. Good relations with customers\n4. Work under pressure\n5. Must be atleast 18 years old\n6. Must be aresident of Thika', 'Cashiering\nCreating reports\nFinancial analysis\nSecurity\nAttention to detail', '10,000 to 13,000 per month'),
('looz@gmail.com', '2023-3-19', 'Chemist', 'Mulinge Pharmacy', 'Juja Gate A', 'Apprenticeship', 'Mulinge Pharmacy, a leading parmacy in juja, is seeking a chemist to join our team. The ideal candidate will be responsible for conducting experiments, analyzing data, and developing new chemical products', '- Conduct experiments and analyze data to develop new chemical products\n- Prepare and analyze samples using a variety of analytical techniques\n- Collaborate with other chemists and scientists to develop new products\n- Write reports and present findings to management and clients\n- Ensure that all work is performed in compliance with safety regulations and company policies\n\n', "* Bachelor's or Master's degree in Chemistry or related field\n* 2+ years of experience in a chemistry laboratory setting\n* Experience with analytical techniques such as HPLC, GC, and spectroscopy\n* Strong analytical and problem-solving skills\n* Ability to work independently and as part of a team\n\n", 'Work under pressure\nAbility to multitask and prioritize workload\nProficient in Microsoft Office and other data analysis software\n\nExcellent written and oral communication skills\n\nStrong knowledge of chemical principles and laboratory techniques\n', '21,000 to 26,000 per month'),
('njeristacey270@gmail.com', '2023-4-1', 'Web Developer', 'Digital Creators', 'Kalimoni', 'Full time', "Digital Creators is seeking a talented Web Developer to join our team. The ideal candidate will be responsible for developing and maintaining web applications that meet our clients' needs.", '1. Develop and maintain web applications using modern web development technologies\n2. Collaborate with designers, product managers, and other developers to create innovative solutions\n3. Write clean, efficient, and well-documented code\n4. Test and debug code to ensure high-quality software\n5. Stay up-to-date with the latest trends and technologies in web development', "1. Bachelor's or Master's degree in Computer Science, Web Development, or a related field\n2. 1+ years of experience in web development\n3. Strong proficiency in HTML, CSS, and JavaScript\n4. Experience with front-end frameworks such as React, Angular, or Vue\n5. Experience with back-end technologies such as Node.js, PHP, or Ruby on Rails\n6. Experience with version control systems such as Git\n7. Strong problem-solving and analytical skills\n\n", 'Strong understanding of web development principles\nExcellent written and verbal communication skills\nAbility to work independently and as part of a team\nFamiliarity with Agile development methodologies\nExperience with cloud technologies such as AWS or Azure is a plus\n', '35,000 to 40,000 per month');

CREATE TABLE job_applications(
application_id INT PRIMARY KEY AUTO_INCREMENT, 
job_posting_id INT, 
posted_by_email VARCHAR(100), 
applicant_email VARCHAR(100),
application_date DATETIME);



