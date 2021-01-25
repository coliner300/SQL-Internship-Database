.header on
.mode line

CREATE TABLE companies
(
  company_name TEXT,
  location TEXT,
  sector TEXT,
  contact_info TEXT
);

CREATE TABLE internships
(
  position TEXT,
  company_name TEXT,
  deadline TEXT,
  duration INTEGER,
  describe TEXT,
  pay TEXT,
  FOREIGN KEY (company_name) REFERENCES companies(company_name)
);

INSERT INTO companies VALUES
('Motorola Solutions', 'Temecula CA', 'Telecommunications', 
'888 325 9336'),
('Esri', 'Redlands CA', 'Geographic Information System', '909 793 2853'),
('First American', 'Santa Ana CA', 'Design Code and Test Property', '1800 854 3643'),
('Asurion', 'Pomona CA', 'Get sneak peek into technology world', '888 562 8662'),
('Blackberry Limited', 'Irvine CA', 'Make Leanring Algorithms', '855 286 6216'),
('Microsoft', 'Laguna Beach CA', 'Build most advanced services', '1800 642 7676'),
('Google', 'Irvine CA', 'Develop Next Generation Technologies', '1866 246 6453'),
('Southern California Edison', 'Santa Ana CA', 'Clean Energy Revolution','1800 655 4555'),
('iHerb', 'Irvine CA', 'Convert and update Cad files', 'iHerb.com'),
('Viasat', 'Carlsbad CA', 'Deliver connections with the capacity to change the world', '1844 702 3199');

.print 'COMPANIES'
SELECT * FROM companies;

INSERT INTO internships VALUES
('Software Development/Engineer', 'Motorola Solutions', '1', 'Unknown', 'Designing and developing elements', '20-110k'),
('Software Development', 'Esri', '1', '12', 'Explore machine learning', '29-92k'),
('Software Development', 'First American', '1', '10', 'Title and Tax Applications', '27-54k'),
('Software Development', 'Asurion', '1', '12', 'Put into groups for leadership tests', 'NA'),
('Data Science Intern', 'Blackberry Limited', '1', '12', 'Applying and improving machine learning', '27-100k'),
('Software Engineer', 'Microsoft', '1', 'NA', 'Develop next generation of technology', '29-57k'),
('Security', 'Google', '111111111111', '12', 'Design and apply advanced security techniques', '26-160k'),
('Computer Engineering', 'Southern California Edison', 'May 2021', '12', 'Help power plant emit less carbon', 'NA'),
('Mechanical Engineering Intern', 'iHerb', '1', 'NA','Perform Prototyping', '25-120k'),
('Software Engineer', 'viasat', '1', '10', 'System infastrucute development', '29-57k');

.print '-----------------'
.print
.print 'INTERNSHIPS'
SELECT * FROM internships;
.print '-----------------'
.print
.print 'INTERNSHIPS BY DEADLINE'
SELECT * FROM internships
ORDER BY deadline;

.print '-----------------'
.print
.print 'Viasat INTERNSHIPS'
SELECT * FROM internships
WHERE company_name='viasat';


.print '-----------------'
.print
.print 'Internships By Amount of Days'
SELECT company_name, position, duration FROM internships
ORDER BY duration DESC;
