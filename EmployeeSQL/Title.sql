CREATE TABLE Title (
    Title_id VARCHAR(6)   NOT NULL,
    Title VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_Title PRIMARY KEY (
        Title_id
     )
);

INSERT INTO Title (Title_id, Title)
	VALUES ('s0001','Staff'),
		('s0002','Senior Staff'),
		('e0002','Engineer'),
		('e0003','Senior Engineer'),
		('e0004','Technique Leader'),
		('m0001','Manager');
		
SELECT * FROM Title;

