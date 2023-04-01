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
('looz@gmail.com','2023-02-27', 'Cashier', 'DaPlace Minimart', 'Thika', 'Full time', 'In need of a cashier for a minimart. Responsible for selling throughout the day, from 5am to 9pm. Should be able to work well at peak hours and ensure security of the minimart', 'Sell to customers at the minimart.\nEnsure security, no shoplifting.\nReport and schedule restocking orders.\nCleaning the minimart\nKeeping time (opening at 5:30 am to 9pm)\nReporting problemsbusiness issues to the owner', 'Form four certificate and upper\nWork experience at a minimart or similar enviromnemt\nGood relations with customers\nWork under pressure\nMust be atleast 18 years old\nMust be aresident of Thika', 'Cashiering\nCreating reports\nFinancial analysis\nSecurity\nAttention to detail', '10,000 to 13,000 per month'),
('looz@gmail.com', '2023-3-19', 'Chemist', 'Mulinge Pharmacy', 'Juja Gate A', 'Apprenticeship', 'Mulinge Pharmacy, a leading parmacy in juja, is seeking a chemist to join our team. The ideal candidate will be responsible for conducting experiments, analyzing data, and developing new chemical products', 'Conduct experiments and analyze data to develop new chemical products\nPrepare and analyze samples using a variety of analytical techniques\nCollaborate with other chemists and scientists to develop new products\nWrite reports and present findings to management and clients\nEnsure that all work is performed in compliance with safety regulations and company policies\n\n', "Bachelor's or Master's degree in Chemistry or related field\n2+ years of experience in a chemistry laboratory setting\nExperience with analytical techniques such as HPLC, GC, and spectroscopy\nStrong analytical and problem-solving skills\nAbility to work independently and as part of a team\n\n", 'Work under pressure\nAbility to multitask and prioritize workload\nProficient in Microsoft Office and other data analysis software\n\nExcellent written and oral communication skills\n\nStrong knowledge of chemical principles and laboratory techniques\n', '21,000 to 26,000 per month'),
('njeristacey270@gmail.com', '2023-3-24', 'Web Developer', 'Digital Creators', 'Kalimoni', 'Full time', "Digital Creators is seeking a talented Web Developer to join our team. The ideal candidate will be responsible for developing and maintaining web applications that meet our clients' needs.", 'Develop and maintain web applications using modern web development technologies\nCollaborate with designers, product managers, and other developers to create innovative solutions\nWrite clean, efficient, and well-documented code\n4. Test and debug code to ensure high-quality software\nStay up-to-date with the latest trends and technologies in web development', "Bachelor's or Master's degree in Computer Science, Web Development, or a related field\n1+ years of experience in web development\nStrong proficiency in HTML, CSS, and JavaScript\nExperience with front-end frameworks such as React, Angular, or Vue\nExperience with back-end technologies such as Node.js, PHP, or Ruby on Rails\nExperience with version control systems such as Git\nStrong problem-solving and analytical skills\n\n", 'Strong understanding of web development principles\nExcellent written and verbal communication skills\nAbility to work independently and as part of a team\nFamiliarity with Agile development methodologies\nExperience with cloud technologies such as AWS or Azure is a plus\n', '35,000 to 40,000 per month'),
('njeristacey270@gmail.com', '2023-3-31', 'Butcher', 'Jaws Butchery', 'Gate A, Executive Apartments', 'Full time', 'If you are passionate about meat and have the necessary skills and qualifications, we encourage you to apply for this exciting opportunity at Jaws butchery. Thank you for considering us as your next employer', 'Cut, trim, and prepare various cuts of meat according to customer requests and company standards\nWeigh, label, and package meat products for retail sale\nEnsure all meat products are fresh, safe, and of high quality\n4. Keep the work area clean, organized, and sanitized\nProvide excellent customer service by answering questions, making recommendations, and fulfilling customer requests\n\n', 'High school Certificate or equivalent\n1+ years of experience in meat cutting, trimming, and processing\nKnowledge of various cuts of meat and their preparation methods\nUnderstanding of food safety regulations and best practices\nAbility to work in a fast-paced environment and stand for extended periods\nStrong communication and interpersonal skills\nAbility to lift heavy objects (up to 50 pounds)\n\n', 'Excellent knife skills and dexterity\nStrong attention to detail\nAbility to work independently and as part of a team\n\nStrong problem-solving skills\nWillingness to learn and follow instructions', '15000 to 16000 per month'),
('testing@gmail.com', '2023-03-21', 'Swimming pool assistant', 'Hotel Lilies', 'Weiteithie', 'Part time', 'Hotel Lilies is seeking a motivated and reliable Pool Assistant to join our team. The ideal candidate will assist with various tasks related to maintaining a clean, safe, and inviting pool environment for our clients.', 'Clean and maintain the pool area, including pool decks, locker rooms, and restrooms\nSet up and take down pool equipment for various aquatic classes and programs\nTest and monitor pool water chemistry and temperature\nAssist lifeguards with pool supervision and safety protocols\nProvide excellent customer service by answering questions and addressing concerns from clients\nAssist with other duties as assigned by management', 'KCSE certificate or equivalent\nPrevious experience in pool maintenance or a related field is preferred\nKnowledge of pool chemicals and safety protocols is a plus\nAbility to work in a fast-paced environment and follow instructions\nStrong communication and interpersonal skills\nAbility to lift heavy objects (up to 50 pounds) and perform physical labor\nAvailability to work flexible hours, including weekends and holidays', 'Attention to detail and thoroughness\nStrong work ethic and dependability\n\nAbility to work independently and as part of a team\n\nExcellent customer service skills\n\nBasic computer skills\n', '18,000 to 20,000 per month'),
('testing@gmail.com', '2023-03-23', 'School Bus Driver', 'Makena School', 'Juja Gate A', 'Full time', 'You will play a crucial role in safely transporting students to and from school each day. The ideal candidate will have excellent communication skills, a clean driving record, and ensure the safety and well-being of children', 'Operate school buses to pick up and drop off students at designated locations\nEnsure the safety and well-being of all students during transportation\nFollow all traffic laws and safety regulations while driving and operating school buses\nConduct pre-trip and post-trip inspections of the bus to ensure safe operation\nMaintain accurate records of bus routes, mileage, and student attendance\nCommunicate effectively with students, parents, and school officials\nReport any vehicle malfunctions or accidents to management\n\n', "Valid commercial driver's license (CDL) with a passenger endorsement and a clean driving record\n2+ years of experience as a professional driver, preferably in a school setting\nKnowledge of traffic laws and safety regulations related to school buses\nAbility to work independently and manage time effectively\nStrong communication and interpersonal skills\nAvailability to work flexible hours, including early mornings and afternoons", 'Safe driving skills and defensive driving techniques\nAbility to navigate efficiently in various traffic and weather conditions\n\nStrong problem-solving skills\nAbility to work independently and as part of a team\nExcellent communication skills, particularly with children and parents', 'Pay unspecified'),
('njeristacey270@gmail.com', '2023-03-14', 'Delivery Guy', '911 Foods', 'Gate B', 'Contract', 'As a Delivery Guy, you will be responsible for ensuring that our customers receive their food orders accurately and on time, while providing friendly and courteous service. ', 'Deliver food orders to customers in a safe and timely manner\nEnsure food orders are properly secured and delivered to the correct recipient\nFollow all traffic laws and safety regulations while driving and operating company vehicles\nProvide excellent customer service by answering questions and addressing concerns from customers\nComplete necessary paperwork and maintain accurate delivery logs\nAssist with loading and unloading food orders as needed\nReport any vehicle malfunctions or accidents to management\n\n', "Valid driver's license with a clean driving record\nPrior experience as a professional driver or delivery driver\nFamiliarity with GPS and routing software\nAbility to work independently and manage time effectively\nStrong communication and interpersonal skills\nAvailability to work flexible hours, including evenings and weekends\nAbility to lift and carry food orders weighing up to 30 pounds\n\n", 'Safe driving skills\nAbility to navigate efficiently in various traffic and weather conditions\nAbility to work independently and as part of a team\nExcellent customer service skills\nTime concious', '14,000 to 20,000 per month'),
('njeristacey270@gmail.com', '2023-03-25', 'Apartment manager (Caretaker)', 'Elohim Court', 'Elohim Court, Juja', 'Full time', 'Elohim Court is seeking an experienced and proactive caretaker to oversee the daily operations of our apartment complex. The ideal candidate will have strong communication and have a background in property management.', 'Oversee day-to-day operations of the apartment complex, including leasing, maintenance, and tenant relations\nManage a team of leasing agents, maintenance technicians, and administrative staff\nDevelop and implement strategies to attract and retain tenants\nEnsure compliance with all applicable laws and regulations, including fair housing laws and building codes\nMaintain accurate and up-to-date records of all leasing and maintenance activities\nDevelop and manage annual budgets and financial reports\nAddress tenant concerns and complaints in a timely and professional manner\nConduct regular inspections of the property to ensure that it is well-maintained and in compliance with all safety standards\n\n', 'At lease a year of experience in property management and in a leadership position\nKnowledge of leasing and property management principles and practices\nStrong leadership and management skills, with the ability to supervise and train staff\nExcellent communication, organizational, and problem-solving skills\nAbility to multitask and work well under pressure\nProficiency in property management software and Microsoft Office Suite\nFamiliarity with fair housing laws and regulations', 'Leadership and management skills\nStrong communication and interpersonal skills\nExcellent problem-solving and decision-making skills\nStrong organizational and time-management skills\nAbility to work well under pressure\nKnowledge of leasing and property management principles and practices', 'Pay unspecified'),
('njeristacey270@gmail.com', '2023-03-20', 'Lab Technician', 'Juja Secondary School', 'Gatundu-Juja Road', 'Full time', "Juja Secondary is seeking a Lab Technician to support our science department. The successful candidate should be responsible for managing the school's science labs, preparing lab equipment and materials for experiments.", "Manage and maintain the school's science labs, including inventory management and equipment maintenance\nPrepare and set up lab equipment and materials for experiments according to teacher's instructions\nAssist teachers and students with lab activities, including demonstrations, experiments, and data collection\nEnsure that all lab activities are conducted safely and in compliance with school and district policies\nDevelop and implement lab safety procedures and protocols\nProvide technical support to teachers and students with troubleshooting and problem-solving\nParticipate in departmental meetings and professional development opportunities\nAssist with other duties as assigned by the science department chair", "Bachelor's degree or Diploma in biology, chemistry, or a related field\n1-2 years of experience working in a lab setting, preferably in an educational environment\nKnowledge of lab equipment and techniques, including pipetting, centrifugation, and microscopy\nFamiliarity with laboratory safety procedures and protocols\nExcellent attention to detail and record-keeping skills\nAbility to work independently and as part of a team\nStrong communication and problem-solving skills\nProficiency in Microsoft Office Suite and data analysis software", 'Proficiency in lab equipment and techniques\nStrong attention to detail and record-keeping skills\nStrong communication and problem-solving skills\nAbility to work independently and as part of a team\nKnowledge of laboratory safety procedures and protocols', '40,000 to 50,000 per month'),
('njeristacey270@gmail.com', '2023-03-26', 'Nurse', 'Kalimoni Mission Hospital', 'Kalimoni', 'Internship', 'The successful candidate will be responsible for providing quality patient care and assisting physicians and other healthcare professionals in diagnosing and treating patients.', 'Provide direct patient care and administer medications and treatments as prescribed by physicians\nAssist in diagnosing and treating patients\nMonitor and record patient symptoms and vital signs\nAssist in preparing patients for procedures and surgeries\nEducate patients and their families about their conditions, treatments, and medications\nCollaborate with physicians, nurses, and other healthcare professionals to develop and implement patient care plans\nMaintain accurate and complete patient records\nMaintain a safe and clean working environment\nAttend trainings and continuing education opportunities to stay current in the field\nOther duties as assigned by the Nurse Manager\n\n', "Bachelor's degree in nursing or a related field preferred\nBLS and ACLS certification required\nStrong clinical and critical thinking skills\nExcellent communication and interpersonal skills\nAbility to work effectively in a fast-paced environment\nKnowledge of medical terminology and electronic medical records\n\n", 'Clinical and critical thinking skills\nCommunication and interpersonal skills\nTime management skills\nAttention to detail\nAdaptability and flexibility\nCompassion and empathy\nPhysical endurance\nTechnology skills', '45,000 to 50,000 per month'),
('testing@gmail.com', '2023-03-18', 'Poultry Farm Equipment Manager', 'Kims Poulty', 'Ndarugo', 'Freelance', 'We are looking for a knowledgeable and experienced poultry farm equipment manager to oversee the maintenance and repair of all poultry farm equipment', 'Oversee the maintenance and repair of all poultry farm equipment, including feeders, waterers, fans, heaters, and ventilation systems\nDevelop and implement preventative maintenance programs to ensure equipment is maintained in good working condition\nMonitor equipment performance and troubleshoot problems as they arise\nSchedule repairs and maintenance work with vendors and contractors as needed\nManage inventory of equipment parts and supplies to ensure adequate stock levels\nTrain and supervise equipment maintenance staff, including assigning work and providing feedback on performance\nDevelop and manage departmental budgets and provide regular reports to management\nEnsure compliance with all safety regulations and company policies', 'Diploma or equivalent required in mechanical engineering or related field preferred\nPrior experience in equipment maintenance and repair, preferably in a poultry farm setting\nStrong knowledge of mechanical, electrical, and hydraulic systems\nExperience with preventative maintenance programs and inventory management\nSupervisory experience and strong leadership skills\nExcellent communication and interpersonal skills\nStrong problem-solving and analytical skills\nAbility to work effectively in a fast-paced environment', 'Strong knowledge of mechanical, electrical, and hydraulic system\nExperience with preventative maintenance programs and inventory management\nSupervisory experience and strong leadership skills\nExcellent communication and interpersonal skills\nStrong problem-solving and analytical skills\n\nAbility to work effectively in a fast-paced environment', '25,000 to 27,000 per month');


CREATE TABLE job_applications(
application_id INT PRIMARY KEY AUTO_INCREMENT, 
job_posting_id INT, 
posted_by_email VARCHAR(100), 
applicant_email VARCHAR(100),
application_date DATETIME);



