ALTER TABLE STUDENTS
ADD CONSTRAINT student_email_chk CHECK (email LIKE  '%_@___%.__%')
ADD CONSTRAINT student_mobile_chk CHECK (mobile NOT LIKE '%[^0-9]%')
ADD CONSTRAINT student_landline_chk CHECK (landline NOT LIKE '%[^0-9]%')
ADD CONSTRAINT Student_termpostcode_chk CHECK (termpostcode LIKE '%___ ___')
ADD CONSTRAINT Student_homepostcode_chk CHECK (homepostcode LIKE '%___ ___');

ALTER TABLE JOBS
ADD CONSTRAINT job_email_chk CHECK (contactemail LIKE  '%_@___%.__%')
ADD CONSTRAINT job_mobile_chk CHECK (contacttelephone NOT LIKE '%[^0-9]%');

ALTER TABLE SITES
ADD CONSTRAINT Site_postcode_chk CHECK (postcode LIKE '%___ ___');