.header on
.mode column

CREATE TABLE companies
(
  names TEXT, 
  location TEXT,
  business_sector Text,
  contact_information Integer
);

CREATE TABLE positions
(
  position_title TEXT, 
  company_name TEXT,
  application_deadline TEXT,
  duration DOUBLE, 
  responsibilities TEXT,
  pay INTEGER
);

INSERT INTO companies VALUES
('Motorola Solutions', 'Temecula CA', 'Telecommunications', 
'888 325 9336');

.print 
.print 'Companies'
SELECT * FROM companies