
/*********************************************************************************************
To Duplicate the Training Dataset
**********************************************************************************************/
TITLE 'Duplicate the Training Dataset';
/* SAS code to create a copy of "loan_training_data" dataset */
PROC SQL;

CREATE TABLE WORK.TRAINING_DS_BK AS
SELECT * FROM WORK.loan_training_data;

QUIT;


/*********************************************************************************************
To Display the Structure (Metadata) of "TRAINING_DS_BK" Dataset
**********************************************************************************************/
TITLE 'Display the Structure (Metadata) of "TRAINING_DS_BK" Dataset';
/* SAS code to display the structure (metadata) of "loan_training_data" dataset */
PROC SQL;

DESCRIBE TABLE WORK.TRAINING_DS_BK;

QUIT;


/*********************************************************************************************
To Label Each Variable of the "TRAINING_DS_BK" Dataset
**********************************************************************************************/
TITLE 'Label Each Variable of the Dataset';
/* SAS code to label each variable of the "TRAINING_DS_BK" dataset */
DATA WORK.TRAINING_DS_BK;
SET WORK.TRAINING_DS_BK;
LABEL SME_LOAN_ID_NO = 'Loan Application Number'
    applicant_gender = 'Gender Name'
    MARITAL_STATUS = 'Marital Status'
    FAMILY_MEMBERS = 'Family Members'
    QUALIFICATION = 'Qualification'
    employment_type = 'Employment'
    CANDIDATE_INCOME = 'Candidate Income'
    GUARANTEE_INCOME = 'Guarantee Income'
    LOAN_AMOUNT = 'Loan Amount'
    LOAN_DURATION = 'Loan Duration'
    LOAN_HISTORY = 'Loan History'
    LOAN_LOCATION = 'Loan Location'
    LOAN_APPROVAL_STATUS = 'Loan Approval Status';
RUN;


/*********************************************************************************************
To Display "TRAINING_DS_BK" Dataset after labelling
**********************************************************************************************/
TITLE 'TRAINING_DS_BK table after labelling';
/* SAS code to display table after labelling */
PROC SQL;

SELECT * FROM WORK.TRAINING_DS_BK;

RUN;

/*********************************************************************************************
Univariate Analysis
**********************************************************************************************/
/*********************************************************************************************
Categorical Variable
**********************************************************************************************/

/* applicant_gender */
TITLE 'Univariate Analysis of the "applicant_gender" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "applicant_gender" variable */
PROC FREQ DATA = WORK.TRAINING_DS_BK;
TABLE applicant_gender;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR applicant_gender;
RUN;


/* MARITAL_STATUS */
TITLE 'Univariate Analysis of the "MARITAL_STATUS" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "MARITAL_STATUS" variable */
PROC FREQ DATA =  WORK.TRAINING_DS_BK;
TABLE MARITAL_STATUS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR MARITAL_STATUS;
RUN;


/* FAMILY_MEMBERS */
TITLE 'Univariate Analysis of the "FAMILY_MEMBERS" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "FAMILY_MEMBERS" variable */
PROC FREQ DATA = WORK.TRAINING_DS_BK;
TABLE FAMILY_MEMBERS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR FAMILY_MEMBERS;
RUN;


/* QUALIFICATION */
TITLE 'Univariate Analysis of the "QUALIFICATION" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "QUALIFICATION" variable */
PROC FREQ DATA = WORK.TRAINING_DS_BK;
TABLE QUALIFICATION;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR QUALIFICATION;
RUN;


/* employment_type */
TITLE 'Univariate Analysis of the "employment_type" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "employment_type" variable */
PROC FREQ DATA = WORK.TRAINING_DS_BK;
TABLE employment_type;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR employment_type;
RUN;


/* LOAN_HISTORY */
TITLE 'Univariate Analysis of the "LOAN_HISTORY" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "LOAN_HISTORY" variable */
PROC FREQ DATA = WORK.TRAINING_DS_BK;
TABLE LOAN_HISTORY;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR LOAN_HISTORY;
RUN;


/* LOAN_LOCATION */
TITLE 'Univariate Analysis of the "LOAN_LOCATION" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "LOAN_LOCATION" variable */
PROC FREQ DATA = WORK.TRAINING_DS_BK;
TABLE LOAN_LOCATION;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR LOAN_LOCATION;
RUN;


/* LOAN_APPROVAL_STATUS */
TITLE 'Univariate Analysis of the "LOAN_APPROVAL_STATUS" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "LOAN_APPROVAL_STATUS" variable */
PROC FREQ DATA = WORK.TRAINING_DS_BK;
TABLE LOAN_APPROVAL_STATUS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBAR LOAN_APPROVAL_STATUS;
RUN;


/*********************************************************************************************
Numerical Variable
**********************************************************************************************/

/* CANDIDATE_INCOME */
TITLE 'Univariate Analysis of the "CANDIDATE_INCOME" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "CANDIDATE_INCOME" variable */
PROC MEANS DATA = WORK.TRAINING_DS_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR CANDIDATE_INCOME;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
HISTOGRAM CANDIDATE_INCOME;

RUN;


/* GUARANTEE_INCOME */
TITLE 'Univariate Analysis of the "GUARANTEE_INCOME" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "GUARANTEE_INCOME" variable */
PROC MEANS DATA = WORK.TRAINING_DS_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR GUARANTEE_INCOME;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
HISTOGRAM GUARANTEE_INCOME;

RUN;


/* LOAN_AMOUNT */
TITLE 'Univariate Analysis of the "LOAN_AMOUNT" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "LOAN_AMOUNT" variable */
PROC MEANS DATA = WORK.TRAINING_DS_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_AMOUNT;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
HISTOGRAM LOAN_AMOUNT;

RUN;


/* LOAN_DURATION */
TITLE 'Univariate Analysis of the "LOAN_DURATION" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "LOAN_DURATION" variable */
PROC MEANS DATA = WORK.TRAINING_DS_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_DURATION;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
HISTOGRAM LOAN_DURATION;

RUN;


/*********************************************************************************************
Bivariate Analysis on the dataset TRAINING_DS_BK using Macro
**********************************************************************************************/
/*********************************************************************************************
To create a MACRO for bivariate analysis on categorical variable versus categorical variable
**********************************************************************************************/

%MACRO MACRO_BIVA_CV_( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1, TITLE_2);
PROC FREQ DATA = &DATASET_NAME;
TABLE &VARIABLE_1 * &VARIABLE_2 /
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
%MEND MACRO_BIVA_CV_;

/*********************************************************************************************
To run bivariate analysis on Categorical variable versus Categorical variable
**********************************************************************************************/

/* applicant_gender Vs. MARITAL_STATUS */
%MACRO_BIVA_CV_(WORK.TRAINING_DS_BK, applicant_gender, MARITAL_STATUS, 'Bivariate analysis', 'on applicant_gender (Categorical) Vs. MARITAL_STATUS (Categorical)');


/* FAMILY_MEMBERS Vs. QUALIFICATION */
%MACRO_BIVA_CV_(WORK.TRAINING_DS_BK, FAMILY_MEMBERS, QUALIFICATION, 'Bivariate analysis', 'on FAMILY_MEMBERS (Categorical) Vs. QUALIFICATION (Categorical)');


/* employment_type Vs. LOAN_HISTORY */
%MACRO_BIVA_CV_(WORK.TRAINING_DS_BK, employment_type, LOAN_HISTORY, 'Bivariate analysis', 'on employment_type (Categorical) Vs. LOAN_HISTORY (Categorical)');


/* LOAN_LOCATION Vs. LOAN_APPROVAL_STATUS */
%MACRO_BIVA_CV_(WORK.TRAINING_DS_BK, LOAN_LOCATION, LOAN_APPROVAL_STATUS, 'Bivariate analysis', 'on LOAN_LOCATION (Categorical) Vs. LOAN_APPROVAL_STATUS (Categorical)');


/* applicant_gender Vs. LOAN_APPROVAL_STATUS */
%MACRO_BIVA_CV_(WORK.TRAINING_DS_BK, applicant_gender, LOAN_APPROVAL_STATUS, 'Bivariate analysis', 'on applicant_gender (Categorical) Vs. LOAN_APPROVAL_STATUS (Categorical)');


/*********************************************************************************************
Categorical Vs. Numerical
**********************************************************************************************/

/* LOAN_APPROVAL_STATUS Vs. CANDIDATE_INCOME */
PROC MEANS DATA = WORK.TRAINING_DS_BK;
/* SAS code to do Bivariate Analysis of the "LOAN_APPROVAL_STATUS" vs. "CANDIDATE_INCOME" variable */
CLASS LOAN_APPROVAL_STATUS ; /* CHAR */
VAR CANDIDATE_INCOME; /* NUMERIC */
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus CANDIDATE_INCOME ( NUMERIC )";

RUN;

PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBOX CANDIDATE_INCOME / CATEGORY = LOAN_APPROVAL_STATUS ;
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus CANDIDATE_INCOME ( NUMERIC )";

RUN;


/* LOAN_APPROVAL_STATUS Vs. GUARANTEE_INCOME */
PROC MEANS DATA = WORK.TRAINING_DS_BK;
/* SAS code to do Bivariate Analysis of the "LOAN_APPROVAL_STATUS" vs. "GUARANTEE_INCOME" variable */
CLASS LOAN_APPROVAL_STATUS ; /* CHAR */
VAR GUARANTEE_INCOME; /* NUMERIC */
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus GUARANTEE_INCOME ( NUMERIC )";

RUN;

PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBOX GUARANTEE_INCOME / CATEGORY = LOAN_APPROVAL_STATUS ;
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus GUARANTEE_INCOME ( NUMERIC )";

RUN;


/* LOAN_APPROVAL_STATUS Vs. LOAN_AMOUNT */
PROC MEANS DATA = WORK.TRAINING_DS_BK;
/* SAS code to do Bivariate Analysis of the "LOAN_APPROVAL_STATUS" vs. "LOAN_AMOUNT" variable */
CLASS LOAN_APPROVAL_STATUS ; /* CHAR */
VAR LOAN_AMOUNT; /* NUMERIC */
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus LOAN_AMOUNT ( NUMERIC )";

RUN;

PROC SGPLOT DATA = WORK.TRAINING_DS_BK;
VBOX LOAN_AMOUNT / CATEGORY = LOAN_APPROVAL_STATUS ;
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus LOAN_AMOUNT ( NUMERIC )";

RUN;


/*********************************************************************************************
Numerical Vs. Numerical
**********************************************************************************************/

/* CANDIDATE_INCOME Vs. GUARANTEE_INCOME */
PROC CORR DATA = WORK.TRAINING_DS_BK PLOTS = SCATTER;
/* SAS code to do Bivariate Analysis of the "CANDIDATE_INCOME" vs. "GUARANTEE_INCOME" variable */
VAR CANDIDATE_INCOME GUARANTEE_INCOME;
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;
TITLE "Bivariate analysis on CANDIDATE_INCOME ( NUMERIC ) Versus GUARANTEE_INCOME ( NUMERIC )";

QUIT;


/* LOAN_AMOUNT Vs. LOAN_DURATION */
PROC CORR DATA = WORK.TRAINING_DS_BK PLOTS = SCATTER;
/* SAS code to do Bivariate Analysis of the "LOAN_AMOUNT" vs. "LOAN_DURATION" variable */
VAR LOAN_AMOUNT LOAN_DURATION;
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;
TITLE "Bivariate analysis on LOAN_AMOUNT ( NUMERIC ) Versus LOAN_DURATION ( NUMERIC )";

QUIT;


/************************************************************************
Imputation for categorical variable on dataset WORK.TRAINING_
*************************************************************************/
/******************************
applicant_gender - Categorical Variable
*******************************/
/* Step 1. Make a copy of TRAINING_COPY_DS */

PROC SQL;

CREATE TABLE WORK.TRAINING_FI_GENDER_DS_BK AS
SELECT * FROM WORK.TRAINING_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "applicant_gender" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "applicant_gender" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each applicant_gender */
TITLE 'Make a copy from current table to Count the Total Observations from Each applicant_gender';
PROC SQL;

CREATE TABLE WORK.TRAINING_FI_GENDER_DS_BK_NEW AS
SELECT g.applicant_gender AS GENDER_NAME, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.applicant_gender IS NOT NULL ) OR
		( g.applicant_gender NE '' ) )
GROUP BY g.applicant_gender;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each Gender';
PROC SQL;

SELECT * 
FROM WORK.TRAINING_FI_GENDER_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(g.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TRAINING_FI_GENDER_DS_BK_NEW g;
QUIT;


/* Step 6. Find the mode for "applicant_gender" variable */
TITLE 'Mode for "applicant_gender" variable';
PROC SQL;
SELECT go.GENDER_NAME
FROM WORK.TRAINING_FI_GENDER_DS_BK_NEW go
WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
						   FROM WORK.TRAINING_FI_GENDER_DS_BK_NEW gi); 
						   /* subquery to find the mode for gender */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TRAINING_FI_GENDER_DS_BK
SET applicant_gender = ( SELECT go.GENDER_NAME
					FROM WORK.TRAINING_FI_GENDER_DS_BK_NEW go 
					WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
										 	   FROM WORK.TRAINING_FI_GENDER_DS_BK_NEW gi ) )
WHERE ( ( applicant_gender IS NULL) OR 
		( applicant_gender EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "applicant_gender" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "applicant_gender" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/******************************
FAMILY_MEMBERS - Categorical Variable
*******************************/
/* Step 1. Make a copy of WORK.TRAINING_FI_GENDER_DS_BK */

PROC SQL;

CREATE TABLE WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK AS
SELECT * FROM WORK.TRAINING_FI_GENDER_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "FAMILY_MEMBERS" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK FM
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each family members */
TITLE 'Make a copy from current table to Count the Total Observations from Each family members';
PROC SQL;

CREATE TABLE WORK.TRAINING_FI_FM_DS_BK_N AS
SELECT fm.FAMILY_MEMBERS AS FAMILY_MEMBERS, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS IS NOT NULL ) OR
		( fm.FAMILY_MEMBERS NE '' ) )
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each family members';
PROC SQL;

SELECT * 
FROM WORK.TRAINING_FI_FM_DS_BK_N;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(fm.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TRAINING_FI_FM_DS_BK_N fm;
QUIT;


/* Step 6. Find the mode for "FAMILY_MEMBERS" variable */
TITLE 'Mode for "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fmo.FAMILY_MEMBERS
FROM WORK.TRAINING_FI_FM_DS_BK_N fmo
WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
						   FROM WORK.TRAINING_FI_FM_DS_BK_N fmi); 
						   /* subquery to find the mode for family members */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = ( SELECT fmo.FAMILY_MEMBERS
					FROM WORK.TRAINING_FI_FM_DS_BK_N fmo
					WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
										 	   FROM WORK.TRAINING_FI_FM_DS_BK_N fmi ) )
WHERE ( ( FAMILY_MEMBERS IS NULL) OR 
		( FAMILY_MEMBERS EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "FAMILY_MEMBERS" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* SAS codes to remove '+" */
/* Step 1: SAS Code to List "3+" in FAMILY_MEMBERS variable */
TITLE 'List of "3+" in FAMILY_MEMBERS variable';
PROC SQL;

SELECT fm.FAMILY_MEMBERS,
	   SUBSTR(fm.FAMILY_MEMBERS,1,1),
	   SUBSTR(fm.FAMILY_MEMBERS,2,1)
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+');
QUIT;

/* Step 2: Count Total Observations that has "+" in "FAMILY_MEMBERS" variable */
TITLE 'Total Observations that has "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Observation'
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 3: Remove "+" from Observations in "FAMILY_MEMBERS" variable */
TITLE 'Remove "+" from Observations in "FAMILY_MEMBERS" variable';
PROC SQL;
UPDATE WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = SUBSTR(FAMILY_MEMBERS,1,1)
WHERE ( SUBSTR(FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 4: List the Observations after removing "+" in "FAMILY_MEMBERS" variable */
TITLE 'List the Observations after removing "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fm.FAMILY_MEMBERS LABEL = 'FAMILY_MEMBERS',
	   COUNT(*) LABEL = 'Number of Applicants'
FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/******************************
MARITAL_STATUS - Categorical Variable
*******************************/
/* Step 1. Make a copy of WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK */

PROC SQL;

CREATE TABLE WORK.TRAINING_FI_MARITAL_STATUS_DS_BK AS
SELECT * FROM WORK.TRAINING_FI_FAMILY_MEMBERS_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "MARITAL_STATUS" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "MARITAL_STATUS" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each marital status */
TITLE 'Make a copy from current table to Count the Total Observations from Each marital status';
PROC SQL;

CREATE TABLE WORK.TRAINING_FI_MS_DS_BK_NEW AS
SELECT ms.MARITAL_STATUS AS MARITAL_STATUS, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS IS NOT NULL ) OR
		( ms.MARITAL_STATUS NE '' ) )
GROUP BY ms.MARITAL_STATUS;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each family members';
PROC SQL;

SELECT * 
FROM WORK.TRAINING_FI_MS_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(ms.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TRAINING_FI_MS_DS_BK_NEW ms;
QUIT;


/* Step 6. Find the mode for "MARITAL_STATUS" variable */
TITLE 'Mode for "MARITAL_STATUS" variable';
PROC SQL;
SELECT mso.MARITAL_STATUS
FROM WORK.TRAINING_FI_MS_DS_BK_NEW mso
WHERE mso.TOTAL_COUNTS EQ ( SELECT MAX(msi.TOTAL_COUNTS)
						   FROM WORK.TRAINING_FI_MS_DS_BK_NEW msi); 
						   /* subquery to find the mode for marital status */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TRAINING_FI_MARITAL_STATUS_DS_BK
SET MARITAL_STATUS = ( SELECT mso.MARITAL_STATUS
					FROM WORK.TRAINING_FI_MS_DS_BK_NEW mso
					WHERE mso.TOTAL_COUNTS EQ ( SELECT MAX(msi.TOTAL_COUNTS)
										 	   FROM WORK.TRAINING_FI_MS_DS_BK_NEW msi ) )
WHERE ( ( MARITAL_STATUS IS NULL) OR 
		( MARITAL_STATUS EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "MARITAL_STATUS" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "MARITAL_STATUS" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;


/******************************
employment_type - Categorical Variable
*******************************/
/* Step 1. Make a copy of WORK.TRAINING_FI_MARITAL_STATUS_DS_BK */

PROC SQL;

CREATE TABLE WORK.TRAINING_FI_EMPLOYMENT_DS_BK AS
SELECT * FROM WORK.TRAINING_FI_MARITAL_STATUS_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "employment_type" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "employment_type" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each employment */
TITLE 'Make a copy from current table to Count the Total Observations from Each employment';
PROC SQL;

CREATE TABLE WORK.TRAINING_FI_EMPLOYMENT_DS_BK_NEW AS
SELECT e.employment_type AS employment_type, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type IS NOT NULL ) OR
		( e.employment_type NE '' ) )
GROUP BY e.employment_type;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each employment';
PROC SQL;

SELECT * 
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(e.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK_NEW e;
QUIT;


/* Step 6. Find the mode for "employment_type" variable */
TITLE 'Mode for "employment_type" variable';
PROC SQL;
SELECT eo.employment_type
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK_NEW eo
WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
						   FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK_NEW ei); 
						   /* subquery to find the mode for employment */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TRAINING_FI_EMPLOYMENT_DS_BK
SET employment_type = ( SELECT eo.employment_type
					FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK_NEW eo
					WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
										 	   FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK_NEW ei ) )
WHERE ( ( employment_type IS NULL) OR 
		( employment_type EQ '' ) );						
QUIT;							


/* Step 8. List the Missing Values in "employment_type" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "employment_type" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;


/******************************
LOAN_HISTORY - Categorical Variable
*******************************/
/* Step 1. Make a copy of WORK.TRAINING_FI_EMPLOYMENT_DS_BK */

PROC SQL;

CREATE TABLE WORK.TRAINING_FI_LOAN_HISTORY_DS_BK AS
SELECT * FROM WORK.TRAINING_FI_EMPLOYMENT_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "LOAN_HISTORY" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each loan history */
TITLE 'Make a copy from current table to Count the Total Observations from Each loan history';
PROC SQL;

CREATE TABLE WORK.TRAINING_FI_LH_DS_BK_NEW AS
SELECT lh.LOAN_HISTORY AS LOAN_HISTORY, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY IS NOT NULL ) OR
		( lh.LOAN_HISTORY NE . ) )
GROUP BY lh.LOAN_HISTORY;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each loan history';
PROC SQL;

SELECT * 
FROM WORK.TRAINING_FI_LH_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(lh.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TRAINING_FI_LH_DS_BK_NEW lh;
QUIT;


/* Step 6. Find the mode for "LOAN_HISTORY" variable */
TITLE 'Mode for "LOAN_HISTORY" variable';
PROC SQL;
SELECT lho.LOAN_HISTORY
FROM WORK.TRAINING_FI_LH_DS_BK_NEW lho
WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
						   FROM WORK.TRAINING_FI_LH_DS_BK_NEW lhi); 
						   /* subquery to find the mode for loan history */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TRAINING_FI_LOAN_HISTORY_DS_BK
SET LOAN_HISTORY = ( SELECT lho.LOAN_HISTORY
					FROM WORK.TRAINING_FI_LH_DS_BK_NEW lho
					WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
										 	   FROM WORK.TRAINING_FI_LH_DS_BK_NEW lhi ) )
WHERE ( ( LOAN_HISTORY IS NULL) OR 
		( LOAN_HISTORY EQ . ) );						
QUIT;							


/* Step 8. List the Missing Values in "LOAN_HISTORY" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/************************************************************************
Imputation for continuous variable on dataset WORK.TRAINING_
*************************************************************************/
/******************************
LOAN_AMOUNT - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_AMOUNT" Variable */
TITLE 'Missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT * 
FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_AMOUNT" Variable */
TITLE 'The total of missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TRAINING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation */
TITLE 'Make a Copy of the "TRAINING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation';
PROC SQL;
CREATE TABLE WORK.TRAINING_FI_LOAN_AMOUNT_DS_BK AS
SELECT * FROM WORK.TRAINING_FI_LOAN_HISTORY_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_AMOUNT" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = WORK.TRAINING_FI_LOAN_AMOUNT_DS_BK REPONLY
METHOD = MEAN OUT=WORK.TRAINING_FI_LOAN_AMOUNT_DS_BK;
VAR LOAN_AMOUNT;
QUIT;


/******************************
LOAN_DURATION - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_DURATION" Variable */
TITLE 'Missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT * 
FROM WORK.TRAINING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_DURATION" Variable */
TITLE 'The total of missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM WORK.TRAINING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TRAINING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation */
TITLE 'Make a Copy of the "TRAINING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation';
PROC SQL;
CREATE TABLE WORK.TRAINING_FI_LOAN_DURATION_DS_BK AS
SELECT * FROM WORK.TRAINING_FI_LOAN_AMOUNT_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_DURATION" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = WORK.TRAINING_FI_LOAN_DURATION_DS_BK REPONLY
METHOD = MEAN OUT=WORK.TRAINING_FI_LOAN_DURATION_DS_BK;
VAR LOAN_DURATION;
QUIT;


/*********************************************************************************************
To Duplicate the Training Dataset
**********************************************************************************************/
TITLE 'Duplicate the Training Dataset';
/* SAS code to create a copy of "loan_test_data" dataset */
PROC SQL;

CREATE TABLE WORK.TESTING_DS_BK AS
SELECT * FROM WORK.loan_test_data;

QUIT;


/*********************************************************************************************
To create a MACRO for univariate analysis on categorical variable in “TESTING_DS_BK”
**********************************************************************************************/
%MACRO MACRO_UVA_CatV_TESTING( DATASET_NAME, VARIABLE_1, TITLE_1, TITLE_2);
TITLE &TITLE_1;
TITLE2 &TITLE_2;
PROC FREQ DATA = &DATASET_NAME;
TABLE &VARIABLE_1;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = &DATASET_NAME;
VBAR &VARIABLE_1;
RUN;
%MEND MACRO_UVA_CatV_TESTING;

/*********************************************************************************************
To run univariate analysis on Categorical variable in “TESTING_DS_BK”
**********************************************************************************************/

/* applicant_gender */
%MACRO_UVA_CatV_TESTING(WORK.TESTING_DS_BK, applicant_gender, 'Univariate analysis', 'on applicant_gender (Categorical) Variable');

/* MARITAL_STATUS */
%MACRO_UVA_CatV_TESTING(WORK.TESTING_DS_BK, MARITAL_STATUS, 'Univariate analysis', 'on MARITAL_STATUS (Categorical) Variable');

/* FAMILY_MEMBERS */
%MACRO_UVA_CatV_TESTING(WORK.TESTING_DS_BK, FAMILY_MEMBERS, 'Univariate analysis', 'on FAMILY_MEMBERS (Categorical) Variable');

/* QUALIFICATION */
%MACRO_UVA_CatV_TESTING(WORK.TESTING_DS_BK, QUALIFICATION, 'Univariate analysis', 'on QUALIFICATION (Categorical) Variable');

/* employment_type */
%MACRO_UVA_CatV_TESTING(WORK.TESTING_DS_BK, employment_type, 'Univariate analysis', 'on employment_type (Categorical) Variable');

/* LOAN_HISTORY */
%MACRO_UVA_CatV_TESTING(WORK.TESTING_DS_BK, LOAN_HISTORY, 'Univariate analysis', 'on LOAN_HISTORY (Categorical) Variable');

/* LOAN_LOCATION */
%MACRO_UVA_CatV_TESTING(WORK.TESTING_DS_BK, LOAN_LOCATION, 'Univariate analysis', 'on LOAN_LOCATION (Categorical) Variable');


/*********************************************************************************************
To create a MACRO for univariate analysis on continuous variable in “TESTING_DS_BK”
**********************************************************************************************/
%MACRO MACRO_UVA_ConV_TESTING( DATASET_NAME, VARIABLE_1, TITLE_1, TITLE_2);
PROC MEANS DATA = &DATASET_NAME N NMISS MIN MAX MEAN MEDIAN STD;
VAR &VARIABLE_1;
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = &DATASET_NAME;
HISTOGRAM &VARIABLE_1;
RUN;
%MEND MACRO_UVA_ConV_TESTING;

/* CANDIDATE_INCOME */
%MACRO_UVA_ConV_TESTING(WORK.TESTING_DS_BK, CANDIDATE_INCOME, 'Univariate analysis', 'on CANDIDATE_INCOME (Continuous) Variable');

/* GUARANTEE_INCOME */
%MACRO_UVA_ConV_TESTING(WORK.TESTING_DS_BK, GUARANTEE_INCOME, 'Univariate analysis', 'on GUARANTEE_INCOME (Continuous) Variable');

/* LOAN_AMOUNT */
%MACRO_UVA_ConV_TESTING(WORK.TESTING_DS_BK, LOAN_AMOUNT, 'Univariate analysis', 'on LOAN_AMOUNT (Continuous) Variable');

/* LOAN_DURATION */
%MACRO_UVA_ConV_TESTING(WORK.TESTING_DS_BK, LOAN_DURATION, 'Univariate analysis', 'on LOAN_DURATION (Continuous) Variable');


/*********************************************************************************************
Bivariate Analysis on the dataset TESTING_DS_BK using Macro
**********************************************************************************************/
/*********************************************************************************************
To create a MACRO for bivariate analysis on categorical variable versus categorical variable
DATASET_NAME -> Name of the Data set
VARIABLE_1 -> 1st variable name to be involved in bivariate analysis (Categorical)
VARIABLE_2 -> 2nd variable name to be involved in bivariate analysis (Categorical)
TITLE_1 -> 1st title to be displayed in the output
TITLE_2 -> 2nd title to be displayed in the output
**********************************************************************************************/

%MACRO MACRO_BIVA_Cat_Testing_( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1, TITLE_2);
PROC FREQ DATA = &DATASET_NAME;
TABLE &VARIABLE_1 * &VARIABLE_2 /
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
%MEND MACRO_BIVA_Cat_Testing_;


/*********************************************************************************************
To run bivariate analysis on Categorical variable versus Categorical variable in testing dataset
**********************************************************************************************/

/* applicant_gender Vs. MARITAL_STATUS */
%MACRO_BIVA_Cat_Testing_(WORK.TESTING_DS_BK, applicant_gender, MARITAL_STATUS, 'Bivariate analysis', 'on applicant_gender (Categorical) Vs. MARITAL_STATUS (Categorical)');


/* FAMILY_MEMBERS Vs. QUALIFICATION */
%MACRO_BIVA_Cat_Testing_(WORK.TESTING_DS_BK, FAMILY_MEMBERS, QUALIFICATION, 'Bivariate analysis', 'on FAMILY_MEMBERS (Categorical) Vs. QUALIFICATION (Categorical)');


/* employment_type Vs. LOAN_HISTORY */
%MACRO_BIVA_Cat_Testing_(WORK.TESTING_DS_BK, employment_type, LOAN_HISTORY, 'Bivariate analysis', 'on employment_type (Categorical) Vs. LOAN_HISTORY (Categorical)');


/* applicant_gender Vs. QUALIFICATION */
%MACRO_BIVA_Cat_Testing_(WORK.TESTING_DS_BK, applicant_gender, QUALIFICATION, 'Bivariate analysis', 'on applicant_gender (Categorical) Vs. QUALIFICATION (Categorical)');


/* applicant_gender Vs. LOAN_LOCATION */
%MACRO_BIVA_Cat_Testing_(WORK.TESTING_DS_BK, applicant_gender, LOAN_LOCATION, 'Bivariate analysis', 'on applicant_gender (Categorical) Vs. LOAN_LOCATION (Categorical)');


/* FAMILY_MEMBERS Vs. LOAN_LOCATION */
%MACRO_BIVA_Cat_Testing_(WORK.TESTING_DS_BK, FAMILY_MEMBERS, LOAN_LOCATION, 'Bivariate analysis', 'on FAMILY_MEMBERS (Categorical) Vs. LOAN_LOCATION (Categorical)');


/*********************************************************************************************
To create a MACRO for bivariate analysis on categorical variable versus continuous variable
DATASET_NAME -> Name of the Data set
VARIABLE_1 -> 1st variable name to be involved in bivariate analysis (Categorical)
VARIABLE_2 -> 2nd variable name to be involved in bivariate analysis (Continuous)
TITLE_1 -> 1st title to be displayed in the output
**********************************************************************************************/
%MACRO MACRO_BIVA_CatVCon_Test_( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1);
PROC MEANS DATA = &DATASET_NAME;
CLASS &VARIABLE_1; /* CHAR */
VAR &VARIABLE_2; /* NUMERIC */
TITLE &TITLE_1;
RUN;
PROC SGPLOT DATA = &DATASET_NAME;
VBOX &VARIABLE_2 / CATEGORY = &VARIABLE_1;
/* FM X-AXIS CI Y-AXIS */
TITLE &TITLE_1;
RUN;
%MEND MACRO_BIVA_CatVCon_Test_;

/*********************************************************************************************
To run bivariate analysis on Categorical variable versus Continuous variable in testing dataset
**********************************************************************************************/

/* applicant_gender Vs. CANDIDATE_INCOME */
%MACRO_BIVA_CatVCon_Test_(WORK.TESTING_DS_BK, applicant_gender, CANDIDATE_INCOME, 'Bivariate analysis on applicant_gender ( CHAR ) Versus CANDIDATE_INCOME ( NUMERIC )');

/* MARITAL_STATUS Vs. GUARANTEE_INCOME */
%MACRO_BIVA_CatVCon_Test_(WORK.TESTING_DS_BK, MARITAL_STATUS, GUARANTEE_INCOME, 'Bivariate analysis on MARITAL_STATUS ( CHAR ) Versus GUARANTEE_INCOME ( NUMERIC )');

/* employment_type Vs. LOAN_AMOUNT */
%MACRO_BIVA_CatVCon_Test_(WORK.TESTING_DS_BK, employment_type, LOAN_AMOUNT, 'Bivariate analysis on employment_type ( CHAR ) Versus LOAN_AMOUNT ( NUMERIC )');


/*********************************************************************************************
To create a MACRO for bivariate analysis on continuous variable versus continuous variable
DATASET_NAME -> Name of the Data set
VARIABLE_1 -> 1st variable name to be involved in bivariate analysis (Continuous)
VARIABLE_2 -> 2nd variable name to be involved in bivariate analysis (Continuous)
TITLE_1 -> 1st title to be displayed in the output
**********************************************************************************************/
%MACRO MACRO_BIVA_ConVCon_Test_( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1);
PROC CORR DATA = &DATASET_NAME PLOTS = SCATTER;
VAR &VARIABLE_1 &VARIABLE_2;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
TITLE &TITLE_1;
QUIT;
%MEND MACRO_BIVA_ConVCon_Test_;

/*********************************************************************************************
To run bivariate analysis on Continuous variable versus Continuous variable in testing dataset
**********************************************************************************************/

/* CANDIDATE_INCOME Vs. GUARANTEE_INCOME */
%MACRO_BIVA_ConVCon_Test_(WORK.TESTING_DS_BK, CANDIDATE_INCOME, GUARANTEE_INCOME, 'Bivariate analysis on CANDIDATE_INCOME ( NUMERIC ) Versus GUARANTEE_INCOME ( NUMERIC )');

/* LOAN_AMOUNT Vs. LOAN_DURATION */
%MACRO_BIVA_ConVCon_Test_(WORK.TESTING_DS_BK, LOAN_AMOUNT, LOAN_DURATION, 'Bivariate analysis on LOAN_AMOUNT ( NUMERIC ) Versus LOAN_DURATION ( NUMERIC )');

/* CANDIDATE_INCOME Vs. LOAN_DURATION */
%MACRO_BIVA_ConVCon_Test_(WORK.TESTING_DS_BK, CANDIDATE_INCOME, LOAN_DURATION, 'Bivariate analysis on CANDIDATE_INCOME ( NUMERIC ) Versus LOAN_DURATION ( NUMERIC )');


/************************************************************************
Imputation for categorical variable on dataset WORK.TESTING_
*************************************************************************/
/******************************
applicant_gender - Categorical Variable
*******************************/
/* Step 1. Make a copy of TESTING_COPY_DS */

PROC SQL;

CREATE TABLE WORK.TESTING_FI_GENDER_DS_BK AS
SELECT * FROM WORK.TESTING_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "applicant_gender" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "applicant_gender" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each applicant_gender */
TITLE 'Make a copy from current table to Count the Total Observations from Each applicant_gender';
PROC SQL;

CREATE TABLE WORK.TESTING_FI_GENDER_DS_BK_NEW AS
SELECT g.applicant_gender AS GENDER_NAME, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.applicant_gender IS NOT NULL ) OR
		( g.applicant_gender NE '' ) )
GROUP BY g.applicant_gender;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each Gender';
PROC SQL;

SELECT * 
FROM WORK.TESTING_FI_GENDER_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(g.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TESTING_FI_GENDER_DS_BK_NEW g;
QUIT;


/* Step 6. Find the mode for "applicant_gender" variable */
TITLE 'Mode for "applicant_gender" variable';
PROC SQL;
SELECT go.GENDER_NAME
FROM WORK.TESTING_FI_GENDER_DS_BK_NEW go
WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
						   FROM WORK.TESTING_FI_GENDER_DS_BK_NEW gi); 
						   /* subquery to find the mode for gender */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TESTING_FI_GENDER_DS_BK
SET applicant_gender = ( SELECT go.GENDER_NAME
					FROM WORK.TESTING_FI_GENDER_DS_BK_NEW go 
					WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
										 	   FROM WORK.TESTING_FI_GENDER_DS_BK_NEW gi ) )
WHERE ( ( applicant_gender IS NULL) OR 
		( applicant_gender EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "applicant_gender" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "applicant_gender" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/******************************
FAMILY_MEMBERS - Categorical Variable
*******************************/
/* Step 1. Make a copy of WORK.TESTING_FI_GENDER_DS_BK */

PROC SQL;

CREATE TABLE WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK AS
SELECT * FROM WORK.TESTING_FI_GENDER_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "FAMILY_MEMBERS" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK FM
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each family members */
TITLE 'Make a copy from current table to Count the Total Observations from Each family members';
PROC SQL;

CREATE TABLE WORK.TESTING_FI_FM_DS_BK_N AS
SELECT fm.FAMILY_MEMBERS AS FAMILY_MEMBERS, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS IS NOT NULL ) OR
		( fm.FAMILY_MEMBERS NE '' ) )
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each family members';
PROC SQL;

SELECT * 
FROM WORK.TESTING_FI_FM_DS_BK_N;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(fm.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TESTING_FI_FM_DS_BK_N fm;
QUIT;


/* Step 6. Find the mode for "FAMILY_MEMBERS" variable */
TITLE 'Mode for "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fmo.FAMILY_MEMBERS
FROM WORK.TESTING_FI_FM_DS_BK_N fmo
WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
						   FROM WORK.TESTING_FI_FM_DS_BK_N fmi); 
						   /* subquery to find the mode for family members */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = ( SELECT fmo.FAMILY_MEMBERS
					FROM WORK.TESTING_FI_FM_DS_BK_N fmo
					WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
										 	   FROM WORK.TESTING_FI_FM_DS_BK_N fmi ) )
WHERE ( ( FAMILY_MEMBERS IS NULL) OR 
		( FAMILY_MEMBERS EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "FAMILY_MEMBERS" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* SAS codes to remove '+" */
/* Step 1: SAS Code to List "3+" in FAMILY_MEMBERS variable */
TITLE 'List of "3+" in FAMILY_MEMBERS variable';
PROC SQL;

SELECT fm.FAMILY_MEMBERS,
	   SUBSTR(fm.FAMILY_MEMBERS,1,1),
	   SUBSTR(fm.FAMILY_MEMBERS,2,1)
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+');
QUIT;

/* Step 2: Count Total Observations that has "+" in "FAMILY_MEMBERS" variable */
TITLE 'Total Observations that has "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Observation'
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 3: Remove "+" from Observations in "FAMILY_MEMBERS" variable */
TITLE 'Remove "+" from Observations in "FAMILY_MEMBERS" variable';
PROC SQL;
UPDATE WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = SUBSTR(FAMILY_MEMBERS,1,1)
WHERE ( SUBSTR(FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 4: List the Observations after removing "+" in "FAMILY_MEMBERS" variable */
TITLE 'List the Observations after removing "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fm.FAMILY_MEMBERS LABEL = 'FAMILY_MEMBERS',
	   COUNT(*) LABEL = 'Number of Applicants'
FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/******************************
employment_type - Categorical Variable
*******************************/
/* Step 1. Make a copy of WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK */

PROC SQL;

CREATE TABLE WORK.TESTING_FI_EMPLOYMENT_DS_BK AS
SELECT * FROM WORK.TESTING_FI_FAMILY_MEMBERS_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "employment_type" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "employment_type" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each employment */
TITLE 'Make a copy from current table to Count the Total Observations from Each employment';
PROC SQL;

CREATE TABLE WORK.TESTING_FI_EMPLOYMENT_DS_BK_NEW AS
SELECT e.employment_type AS employment_type, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type IS NOT NULL ) OR
		( e.employment_type NE '' ) )
GROUP BY e.employment_type;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each employment';
PROC SQL;

SELECT * 
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(e.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK_NEW e;
QUIT;


/* Step 6. Find the mode for "employment_type" variable */
TITLE 'Mode for "employment_type" variable';
PROC SQL;
SELECT eo.employment_type
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK_NEW eo
WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
						   FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK_NEW ei); 
						   /* subquery to find the mode for employment */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TESTING_FI_EMPLOYMENT_DS_BK
SET employment_type = ( SELECT eo.employment_type
					FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK_NEW eo
					WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
										 	   FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK_NEW ei ) )
WHERE ( ( employment_type IS NULL) OR 
		( employment_type EQ '' ) );						
QUIT;							


/* Step 8. List the Missing Values in "employment_type" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "employment_type" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.employment_type EQ '' ) OR
		( e.employment_type IS NULL) );
QUIT;


/******************************
LOAN_HISTORY - Categorical Variable
*******************************/
/* Step 1. Make a copy of WORK.TESTING_FI_EMPLOYMENT_DS_BK */

PROC SQL;

CREATE TABLE WORK.TESTING_FI_LOAN_HISTORY_DS_BK AS
SELECT * FROM WORK.TESTING_FI_EMPLOYMENT_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "LOAN_HISTORY" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each loan history */
TITLE 'Make a copy from current table to Count the Total Observations from Each loan history';
PROC SQL;

CREATE TABLE WORK.TESTING_FI_LH_DS_BK_NEW AS
SELECT lh.LOAN_HISTORY AS LOAN_HISTORY, COUNT(*) AS TOTAL_COUNTS
FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY IS NOT NULL ) OR
		( lh.LOAN_HISTORY NE . ) )
GROUP BY lh.LOAN_HISTORY;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each loan history';
PROC SQL;

SELECT * 
FROM WORK.TESTING_FI_LH_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(lh.TOTAL_COUNTS) AS MAX_COUNTS
FROM WORK.TESTING_FI_LH_DS_BK_NEW lh;
QUIT;


/* Step 6. Find the mode for "LOAN_HISTORY" variable */
TITLE 'Mode for "LOAN_HISTORY" variable';
PROC SQL;
SELECT lho.LOAN_HISTORY
FROM WORK.TESTING_FI_LH_DS_BK_NEW lho
WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
						   FROM WORK.TESTING_FI_LH_DS_BK_NEW lhi); 
						   /* subquery to find the mode for loan history */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE WORK.TESTING_FI_LOAN_HISTORY_DS_BK
SET LOAN_HISTORY = ( SELECT lho.LOAN_HISTORY
					FROM WORK.TESTING_FI_LH_DS_BK_NEW lho
					WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
										 	   FROM WORK.TESTING_FI_LH_DS_BK_NEW lhi ) )
WHERE ( ( LOAN_HISTORY IS NULL) OR 
		( LOAN_HISTORY EQ . ) );						
QUIT;							


/* Step 8. List the Missing Values in "LOAN_HISTORY" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/************************************************************************
Imputation for continuous variable on dataset WORK.TESTING_
*************************************************************************/
/******************************
LOAN_AMOUNT - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_AMOUNT" Variable */
TITLE 'Missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT * 
FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_AMOUNT" Variable */
TITLE 'The total of missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TESTING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation */
TITLE 'Make a Copy of the "TESTING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation';
PROC SQL;
CREATE TABLE WORK.TESTING_FI_LOAN_AMOUNT_DS_BK AS
SELECT * FROM WORK.TESTING_FI_LOAN_HISTORY_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_AMOUNT" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = WORK.TESTING_FI_LOAN_AMOUNT_DS_BK REPONLY
METHOD = MEAN OUT=WORK.TESTING_FI_LOAN_AMOUNT_DS_BK;
VAR LOAN_AMOUNT;
QUIT;


/******************************
LOAN_DURATION - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_DURATION" Variable */
TITLE 'Missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT * 
FROM WORK.TESTING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_DURATION" Variable */
TITLE 'The total of missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM WORK.TESTING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TESTING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation */
TITLE 'Make a Copy of the "TESTING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation';
PROC SQL;
CREATE TABLE WORK.TESTING_FI_LOAN_DURATION_DS_BK AS
SELECT * FROM WORK.TESTING_FI_LOAN_AMOUNT_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_DURATION" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = WORK.TESTING_FI_LOAN_DURATION_DS_BK REPONLY
METHOD = MEAN OUT=WORK.TESTING_FI_LOAN_DURATION_DS_BK;
VAR LOAN_DURATION;
QUIT;


/*********************************************************
Building a Logistic Regression Model AND Make a Prediction
**********************************************************/
PROC LOGISTIC DATA = WORK.TRAINING_FI_LOAN_DURATION_DS_BK OUTMODEL = WORK.TRAINING_DS_LRMODEL;

/* Categorical Variables */
CLASS
applicant_gender
MARITAL_STATUS
FAMILY_MEMBERS
QUALIFICATION
employment_type
LOAN_LOCATION;

MODEL LOAN_APPROVAL_STATUS =
/* Independent Variables */
/* Dependent Variables is LOAN_APPROVAL_STATUS */
applicant_gender 
MARITAL_STATUS
FAMILY_MEMBERS
QUALIFICATION
employment_type
CANDIDATE_INCOME
GUARANTEE_INCOME
LOAN_AMOUNT
LOAN_DURATION
LOAN_HISTORY
LOAN_LOCATION;
OUTPUT OUT = WORK.TRAINING_DS_LRMODEL_OUTPUT P = PRED_PROB;

RUN;

/* Show the predicted probability that was discovered inside the “WORK.TRAINING DS” dataset */

PROC SQL;
SELECT * FROM WORK.TRAINING_DS_LRMODEL_OUTPUT;
QUIT;

/* Show the content of the LR Model that was generated */

PROC SQL;
SELECT * FROM WORK.TRAINING_DS_LRMODEL;
QUIT;

/* Create the Prediction */

PROC LOGISTIC INMODEL = WORK.TRAINING_DS_LRMODEL; /* Passing the Model that has been created */
SCORE DATA = WORK.TESTING_FI_LOAN_DURATION_DS_BK /* Passing the Testing Dataset */
OUT = WORK.TESTING_DS_PREDICTIONS; /* The output location */
QUIT;

/* Display the Prediction */

PROC SQL;
SELECT * FROM WORK.TESTING_DS_PREDICTIONS;
QUIT;

/*********************************************************************************************
Additional Analysis: Frequency Table of Loan Approval Status by Gender
**********************************************************************************************/
TITLE 'Loan Approval Status by Applicant Gender';
PROC FREQ DATA=WORK.loan_training_data;
    TABLES applicant_gender*approval_status / NOCOL NOPERCENT NOROW;
RUN;
