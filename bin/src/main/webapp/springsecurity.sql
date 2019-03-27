INSERT INTO ROLES_HIERARCHY values ('ROLE_RESTRICTED', 'IS_AUTHENTICATED_FULLY');
INSERT INTO ROLES_HIERARCHY values ('IS_AUTHENTICATED_FULLY', 'IS_AUTHENTICATED_REMEMBERED');
INSERT INTO ROLES_HIERARCHY values ('IS_AUTHENTICATED_REMEMBERED', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO ROLES_HIERARCHY values ('ROLE_ADMIN', 'ROLE_A');
INSERT INTO ROLES_HIERARCHY values ('ROLE_A', 'ROLE_RESTRICTED');


CREATE TABLE SECURED_RESOURCES (
RESOURCE_ID VARCHAR(10) NOT NULL, RESOURCE_NAME VARCHAR(50), RESOURCE_PATTERN VARCHAR(300) NOT NULL, DESCRIPTION VARCHAR(100),
RESOURCE_TYPE VARCHAR(10),
SORT_ORDER INTEGER,
CREATE_DATE DATE,
MODIFY_DATE DATE,
CONSTRAINT PK_RECURED_RESOURCES PRIMARY KEY(RESOURCE_ID)
);

INSERT INTO SECURED_RESOURCES (
RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE )VALUES
(
'web-000001', 'boardListUrl', '/board/*List*', 'url'
);


INSERT INTO SECURED_RESOURCES
(
RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE )VALUES
(
'web-000002', 'boardViewUrl', '/board/*View*/**', 'url'
);

INSERT INTO SECURED_RESOURCES (
RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE )VALUES
(
'web-000003', 'boardUrl', '/board/*', 'url'
);


CREATE TABLE SECURED_RESOURCES_ROLE (
RESOURCE_ID VARCHAR(10) NOT NULL,
AUTHORITY VARCHAR(50) NOT NULL,
CONSTRAINT PK_SECURED_RESOURCES_ROLE PRIMARY KEY(RESOURCE_ID,AUTHORITY),
CONSTRAINT FK_SECURED_RESOURCES FOREIGN KEY(RESOURCE_ID) REFERENCES SECURED_RESOURCES(RESOURCE_ID),
CONSTRAINT FK_ROLES4 FOREIGN KEY (AUTHORITY) REFERENCES ROLES(AUTHORITY) );

INSERT INTO SECURED_RESOURCES_ROLE (
RESOURCE_ID, AUTHORITY )
VALUES
(
'web-000001', 'ROLE_USER'
);

INSERT INTO SECURED_RESOURCES_ROLE (
RESOURCE_ID, AUTHORITY )
VALUES
(
'web-000002', 'ROLE_USER'
);

INSERT INTO SECURED_RESOURCES_ROLE (
RESOURCE_ID, AUTHORITY )
VALUES
(
'web-000003', 'ROLE_ADMIN'
);

		


INSERT INTO ROLES_HIERARCHY values ('ROLE_RESTRICTED', 'IS_AUTHENTICATED_FULLY');
INSERT INTO ROLES_HIERARCHY values ('IS_AUTHENTICATED_FULLY', 'IS_AUTHENTICATED_REMEMBERED');
INSERT INTO ROLES_HIERARCHY values ('IS_AUTHENTICATED_REMEMBERED', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO ROLES_HIERARCHY values ('ROLE_ADMIN', 'ROLE_A');
INSERT INTO ROLES_HIERARCHY values ('ROLE_A', 'ROLE_RESTRICTED');


CREATE TABLE SECURED_RESOURCES (
RESOURCE_ID VARCHAR(10) NOT NULL, RESOURCE_NAME VARCHAR(50), RESOURCE_PATTERN VARCHAR(300) NOT NULL, DESCRIPTION VARCHAR(100),
RESOURCE_TYPE VARCHAR(10),
SORT_ORDER INTEGER,
CREATE_DATE DATE,
MODIFY_DATE DATE,
CONSTRAINT PK_RECURED_RESOURCES PRIMARY KEY(RESOURCE_ID)
);

INSERT INTO SECURED_RESOURCES (
RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE )VALUES
(
'web-000001', 'boardListUrl', '/board/*List*', 'url'
);


INSERT INTO SECURED_RESOURCES
(
RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE )VALUES
(
'web-000002', 'boardViewUrl', '/board/*View*/**', 'url'
);

INSERT INTO SECURED_RESOURCES (
RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE )VALUES
(
'web-000003', 'boardUrl', '/board/*', 'url'
);


CREATE TABLE SECURED_RESOURCES_ROLE (
RESOURCE_ID VARCHAR(10) NOT NULL,
AUTHORITY VARCHAR(50) NOT NULL,
CONSTRAINT PK_SECURED_RESOURCES_ROLE PRIMARY KEY(RESOURCE_ID,AUTHORITY),
CONSTRAINT FK_SECURED_RESOURCES FOREIGN KEY(RESOURCE_ID) REFERENCES SECURED_RESOURCES(RESOURCE_ID),
CONSTRAINT FK_ROLES4 FOREIGN KEY (AUTHORITY) REFERENCES ROLES(AUTHORITY) );

INSERT INTO SECURED_RESOURCES_ROLE (
RESOURCE_ID, AUTHORITY )
VALUES
(
'web-000001', 'ROLE_USER'
);

INSERT INTO SECURED_RESOURCES_ROLE (
RESOURCE_ID, AUTHORITY )
VALUES
(
'web-000002', 'ROLE_USER'
);

INSERT INTO SECURED_RESOURCES_ROLE (
RESOURCE_ID, AUTHORITY )
VALUES
(
'web-000003', 'ROLE_ADMIN'
);

		
