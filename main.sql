.header on
.mode column

CREATE TABLE companies
(
  names TEXT, 
  location TEXT,
  business_sector TEXT,
  contact_information Integer
);

CREATE TABLE positions
(
  position_title TEXT, 
  company_name TEXT,
  application_deadline TEXT,
  duration TEXT, 
  responsibilities TEXT,
  pay TEXT
);

INSERT INTO companies VALUES
('Motorola Solutions', 'Temecula CA', 'Telecommunications', 
'888 325 9336'),
('Esri', 'Redlands CA', 'Geographic Information System', '909 793 2853');

INSERT INTO positions VALUES
('Software Development', 'Esri', 'Keep Checking in', '12 weeks', 'Explore machine learning', '29-92k');

.print 
.print 'Companies'
SELECT * FROM companies

.print 
.print 'Positions'
SELECT * FROM positions