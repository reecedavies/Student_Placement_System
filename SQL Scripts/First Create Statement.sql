CREATE TABLE PROGRAMMES    ( 

	Programme_Code CHAR(4) CONSTRAINT Programme_Code_pk PRIMARY KEY,
	
	Programme_Name VARCHAR(60) CONSTRAINT Programe_Name_nn NOT NULL,
	
	Placement_Mandatory CHAR(1)
);
CREATE TABLE STUDENTS ( 

    StudentID CHAR(8) CONSTRAINT StudentID_PK PRIMARY KEY, 

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
CREATE TABLE COMPANIES ( 

    CompanyID CHAR(8) CONSTRAINT CompanyID_PK PRIMARY KEY,
	
    CompanyName VARCHAR(80) CONSTRAINT CompanyName_NN NOT NULL
	);
CREATE TABLE SITES ( 

    SiteID CHAR(8) CONSTRAINT SiteID_PK PRIMARY KEY, 

    SiteName VARCHAR(40) CONSTRAINT SiteName_NN NOT NULL, 

    Address VARCHAR(200) CONSTRAINT Address_NN NOT NULL, 

    CompanyID CHAR(8) CONSTRAINT Company_ID_NN NOT NULL,
    CONSTRAINT FK_CompanyID FOREIGN KEY (CompanyID) REFERENCES COMPANIES(CompanyID)
    );
CREATE TABLE jobs( 
    JobID CHAR(7) CONSTRAINT jobs_job_id_pk PRIMARY KEY, 
	
    JobTitle VARCHAR2(40) CONSTRAINT jobs_job_title_nn NOT NULL,
	
    JobDescription VARCHAR2(2000) CONSTRAINT jobs_job_description_nn NOT NULL,

    ContactEmail VARCHAR2(100), 
	
    ContactTelephone VARCHAR2(11),

    Salary NUMBER(7, 2),

    StartDate DATE,

    VacanciesAvailable NUMBER(2),
	
    ApplicationClosingDate DATE CONSTRAINT jobs_application_closing_date_nn NOT NULL,

    ApplicationMethod VARCHAR2(30) CONSTRAINT jobs_application_method_nn NOT NULL,

    SiteID CHAR(8) CONSTRAINT SiteID_NN NOT NULL,
    CONSTRAINT jobs_site_id_fk FOREIGN KEY (SiteID) REFERENCES SITES(SiteID)
	);
CREATE TABLE APPLICATIONS ( 

    StudentID CHAR(4) CONSTRAINT Student_ID_NN NOT NULL,
	CONSTRAINT Applications_Student_ID_FK FOREIGN KEY (StudentID) REFERENCES STUDENTS(StudentID),
	
    JobID CHAR(8) CONSTRAINT Job_ID_NN NOT NULL,
	CONSTRAINT FK_JobID FOREIGN KEY (JobID) REFERENCES JOBS(JobID),

    ApplicationStatus VARCHAR(28) CONSTRAINT ApplicationStatus_NN NOT NULL,

    StatusDate DATE,
	
	CONSTRAINT applications_pk PRIMARY KEY (StudentID, JobID)
    );
CREATE TABLE APPLICATIONHISTORIES (
    StudentID CHAR(4) CONSTRAINT Student_ID_NN NOT NULL,
	CONSTRAINT Applications_Student_ID_FK FOREIGN KEY (StudentID) REFERENCES APPLICATIONS(StudentID),
	
    JobID CHAR(8) CONSTRAINT Job_ID_NN NOT NULL,
	CONSTRAINT FK_JobID FOREIGN KEY (JobID) REFERENCES APPLICATIONS(JobID),

    ApplicationStatus VARCHAR(28) CONSTRAINT ApplicationStatus_NN NOT NULL,

    StatusDate DATE,

    CONSTRAINT applicationhistories_pk PRIMARY KEY (StudentID, JobID, ApplicationStatus)

    );