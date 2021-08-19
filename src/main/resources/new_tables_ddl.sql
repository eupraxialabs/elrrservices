DROP TABLE imports;

CREATE TABLE imports (
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

DROP TABLE importsdetails;

CREATE TABLE importsdetails (
	importdetailsid int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	importid int8 NULL,
	totalrecords int4 NULL,
	successrecords int4 NULL,
	failedrecords int4 NULL,
	importbegintime timestamp NULL,
	importendtime timestamp NULL,
	importstatus varchar(255) NULL,
	CONSTRAINT importsdetails_pkey PRIMARY KEY (importdetailsid)
);


DROP TABLE syncrecord;

CREATE TABLE syncrecord (
	sync_record_id int8 NOT NULL,
	importdetailsid int8 NOT NULL,
	synckey varchar(255) NULL,
	syncrecordstatus varchar(255) NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	updatedby varchar(255) NULL,
	CONSTRAINT syncrecord_pkey PRIMARY KEY (sync_record_id)
);

DROP TABLE syncrecorddetails;

CREATE TABLE syncrecorddetails (
	sync_record_details_id int8 NOT NULL,
	payload jsonb NULL,
	syncdetailsstatus varchar(255) NULL,
	syncrecordid int8 NULL,
	learner jsonb NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	updatedby varchar(255) NULL,
	CONSTRAINT syncrecorddetails_pkey PRIMARY KEY (sync_record_details_id)
);

DROP TABLE elrrauditlog;

CREATE TABLE elrrauditlog (
	auditlogid int8 NOT NULL,
	payload jsonb NULL,
	syncid int8 NOT NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	updatedby varchar(255) NULL,
	CONSTRAINT elrrauditlog_pkey PRIMARY KEY (auditlogid)
);

DROP TABLE "configuration";

CREATE TABLE "configuration" (
	configurationid int8 NOT NULL,
	configurationname varchar(255) NOT NULL,
	configurationvalue varchar(255) NULL,
	recordstatus varchar(255) NULL,
	frequency varchar(255) NULL,
	starttime varchar(255) NULL,
	contactname varchar(255) NULL,
	email varchar(255) NULL,
	orgname varchar(255) NULL,
	phone varchar(255) NULL,
	inserteddate timestamp NULL,
	lastmodified timestamp NULL,
	updatedby varchar(255) NULL,
	CONSTRAINT configuration_pkey PRIMARY KEY (configurationid)
);