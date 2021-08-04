CREATE SCHEMA STAGE;
 
Drop table IF EXISTS STAGE.CONFIGURATION;
 
CREATE TABLE STAGE.CONFIGURATION (
	configurationid int8 NOT NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	updatedby varchar(255) NULL,
	configurationname varchar(255) NOT NULL,
	configurationvalue varchar(255) NULL,
	recordstatus varchar(255) NULL,
	frequency varchar(255) NULL,
	starttime varchar(255) NULL,
	contactname varchar(255) NULL,
	email varchar(255) NULL,
	orgname varchar(255) NULL,
	phone varchar(255) NULL,
	primarycontact varchar(255) NULL,
	primaryemail varchar(255) NULL,
	primaryorgname varchar(255) NULL,
	primaryphone varchar(255) NULL,
	secondarycontact varchar(255) NULL,
	secondaryemail varchar(255) NULL,
	secondaryorgname varchar(255) NULL,
	secondaryphone varchar(255) NULL,
	CONSTRAINT configuration_pkey PRIMARY KEY (configurationid)
);

Drop table IF EXISTS STAGE.IMPORTS;

CREATE TABLE STAGE.IMPORTS (
	importid int4 NOT NULL,
	importname varchar(100) NOT NULL,
	importstartdate date NULL,
	importenddate date NULL,
	recordstatus varchar(20) NULL,
	updatedby varchar(20) NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	CONSTRAINT pk12 PRIMARY KEY (importid)
);

Drop table IF EXISTS STAGE.IMPORTSDETAILS;


CREATE TABLE STAGE.IMPORTSDETAILS (
	importdetailsid int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	failedrecords int4 NULL,
	importbegintime timestamp NULL,
	importendtime timestamp NULL,
	importstatus varchar(255) NULL,
	importid int8 NULL,
	successrecords int4 NULL,
	totalrecords int4 NULL,
	CONSTRAINT importsdetails_pkey PRIMARY KEY (importdetailsid)
);

Drop table IF EXISTS STAGE.SYNCRECORD;

CREATE TABLE STAGE.SYNCRECORD (
	sync_record_id int8 NOT NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	updatedby varchar(255) NULL,
	importdetailsid int8 NOT NULL,
	synckey varchar(255) NULL,
	syncrecordstatus varchar(255) NULL,
	CONSTRAINT syncrecord_pkey PRIMARY KEY (sync_record_id)
);

Drop table IF EXISTS STAGE.SYNCRECORDDETAILS;

CREATE TABLE STAGE.SYNCRECORDDETAILS (
	sync_record_details_id int8 NOT NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	updatedby varchar(255) NULL,
	payload jsonb NULL,
	syncdetailsstatus varchar(255) NULL,
	syncrecordid int8 NULL,
	learner jsonb NULL,
	CONSTRAINT syncrecorddetails_pkey PRIMARY KEY (sync_record_details_id)
);