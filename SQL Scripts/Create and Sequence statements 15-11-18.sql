CREATE TABLE PROGRAMMES    ( 

	Programme_Code CHAR(4) CONSTRAINT Programme_Code_pk PRIMARY KEY,
	
	Programme_Name VARCHAR(60) CONSTRAINT Programe_Name_nn NOT NULL,
	
	Placement_Mandatory CHAR(1)
);

CREATE SEQUENCE seq_student_id(
	START WITH 100000
	INCREMENT BY 1
	MAXVALUE 999999
	CYCLE
	NOCACHE
	);
CREATE TABLE STUDENTS ( 

    StudentID NUMBER DEFAULT ON NULL seq_student_id.nextval CONSTRAINT StudentID_PK PRIMARY KEY,

    Username VARCHAR(20) CONSTRAINT Username_NN NOT NULL, 

    Password VARCHAR(20) CONSTRAINT Password_NN NOT NULL, 

    FirstName VARCHAR(30) CONSTRAINT FirstName_NN NOT NULL,

    LastName VARCHAR(45) CONSTRAINT LastName_NN NOT NULL,

    email VARCHAR(100),

    Mobile VARCHAR(11),

    Landline VARCHAR(11),

    Programme_Code CHAR(4) CONSTRAINT Programme_Code_NN NOT NULL,
    CONSTRAINT FK_Programme_Code FOREIGN KEY (Programme_Code) REFERENCES Programmes(Programme_Code), 

    DOB DATE  CONSTRAINT DOB_NN NOT NULL, 
	
    Preference VARCHAR(2000),
    TermAddress VARCHAR(200),
    TermPostCode VARCHAR(8),
    HomeAddress VARCHAR(200),
    HomePostCode VARCHAR(8),
    CVSubmitted DATE,
    CVAccepted DATE
    );
CREATE OR REPLACE TRIGGER trg_cv_accepted (
	BEFORE UPDATE OF CVACCEPTED ON STUDENTS FOR EACH ROW
	BEGIN
		IF :OLD.CVSUBMITTED IS NULL
		THEN :NEW.CVACCEPTED := NULL;
		END IF;
	END;
	);
	
CREATE TABLE COMPANIES (
    CompanyName VARCHAR(80) CONSTRAINT CompanyName_NN NOT NULL CONSTRAINT CompanyName_PK PRIMARY KEY
	);
	
CREATE SEQUENCE seq_site_id(
	START WITH 10000
	INCREMENT BY 1
	MAXVALUE 99999
	CYCLE
	NOCACHE
	);
CREATE TABLE SITES ( 

    SiteID VARCHAR(7) DEFAULT ON NULL 'S'||LTRIM(TO_CHAR(seq_site_id.nextval,'09999')) CONSTRAINT SiteID_PK PRIMARY KEY, 

    SiteName VARCHAR(40) CONSTRAINT SiteName_NN NOT NULL, 

    Address VARCHAR(200) CONSTRAINT Address_NN NOT NULL, 

    CompanyName VARCHAR(80) CONSTRAINT Site_CompanyName_NN NOT NULL,
    CONSTRAINT CompanyName_FK FOREIGN KEY (CompanyName) REFERENCES COMPANIES(CompanyName)
    );
	
CREATE SEQUENCE seq_job_id(
	START WITH 10000
	INCREMENT BY 1
	MAXVALUE 99999
	CYCLE
	NOCACHE
	);
CREATE TABLE jobs( 
    JobID VARCHAR(7) DEFAULT ON NULL 'J'||LTRIM(TO_CHAR(seq_job_id.nextval,'09999')) CONSTRAINT jobs_job_id_pk PRIMARY KEY, 
	
    JobTitle VARCHAR2(40) CONSTRAINT jobs_job_title_nn NOT NULL,
	
    JobDescription VARCHAR2(2000) CONSTRAINT jobs_job_description_nn NOT NULL,

    ContactEmail VARCHAR2(100), 
	
    ContactTelephone VARCHAR2(11),

    Salary NUMBER(7, 2),

    StartDate DATE,

    VacanciesAvailable NUMBER(2),
	
    ApplicationClosingDate DATE CONSTRAINT jobs_application_closing_date_nn NOT NULL,

    ApplicationMethod VARCHAR2(30) CONSTRAINT jobs_application_method_nn NOT NULL,

    SiteID VARCHAR(7) CONSTRAINT SiteID_NN NOT NULL,
    CONSTRAINT jobs_site_id_fk FOREIGN KEY (SiteID) REFERENCES SITES(SiteID)
	);

CREATE SEQUENCE seq_application_id(
	START WITH 1000000
	INCREMENT BY 1
	MAXVALUE 9999999
	CYCLE
	NOCACHE
	);
CREATE TABLE APPLICATIONS ( 

    ApplicationID VARCHAR(9) DEFAULT ON NULL 'A'||LTRIM(TO_CHAR(seq_application_id.nextval,'0999999')) CONSTRAINT application_id_pk PRIMARY KEY,

    StudentID NUMBER CONSTRAINT Student_ID_NN NOT NULL,
	CONSTRAINT Applications_Student_ID_FK FOREIGN KEY (StudentID) REFERENCES STUDENTS(StudentID),
	
    JobID VARCHAR(7) CONSTRAINT Job_ID_NN NOT NULL,
	CONSTRAINT FK_JobID FOREIGN KEY (JobID) REFERENCES JOBS(JobID),

    ApplicationStatus VARCHAR(28) CONSTRAINT ApplicationStatus_NN NOT NULL,

    StatusDate DATE
    );
	
CREATE TABLE APPLICATIONHISTORIES (
    ApplicationID VARCHAR(9),
    CONSTRAINT Application_histories_ID_FK FOREIGN KEY (ApplicationID) REFERENCES APPLICATIONS(ApplicationID),

    ApplicationStatus VARCHAR(28) CONSTRAINT ApplicationHistoriesStatus_NN NOT NULL,

    StatusDate DATE,

    CONSTRAINT applicationhistories_pk PRIMARY KEY (ApplicationID, ApplicationStatus)
    );
CREATE OR REPLACE TRIGGER trg_application_update(
	BEFORE UPDATE OF ApplicationStatus ON APPLICATIONS FOR EACH ROW
	BEGIN
		INSERT INTO APPLICATIONHISTORIES
			(
			ApplicationID, ApplicationStatus,StatusDate
			)
		VALUES
			(
			:OLD.ApplicationID, :OLD.ApplicationStatus, :OLD.StatusDate
			);
	END);
	
/*NOT NEEDED YET*/
CREATE OR REPLACE TRIGGER trg_application_create(
	BEFORE INSERT OF ApplicationID ON APPLICATIONS FOR EACH ROW
		BEGIN
			IF (SELECT CVAccepted FROM STUDENTS JOIN APPLICATIONS ON STUDENTS.STUDENTID = APPLICATIONS.STUDENTID WHERE STUDENTID = :NEW.STUDENTID)
			IS NOT NULL
			THEN RAISE_APPLICATION_ERROR(-20000, 'CV has not been approved');
			ENDIF;
		END
		);