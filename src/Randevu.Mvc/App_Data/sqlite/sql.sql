

-- Generated on 6/5/2010 4:41:22 PM

CREATE TABLE 'rdv_aspnet_applications'(
	'ApplicationID' int NOT NULL,
	'ApplicationName' varchar(100) NOT NULL DEFAULT '',
	'Description' text default NULL,
	'PropertyValuesString' text default NULL,
	PRIMARY KEY('ApplicationID')
);

CREATE TABLE 'rdv_users'(
	'ID' varchar(36) NOT NULL default '',
	'Username' varchar(255) NOT NULL,
	'ApplicationName' varchar(100) NOT NULL DEFAULT '',
	'Email' varchar(254) NOT NULL DEFAULT '',
	'Comment' varchar(255) NOT NULL DEFAULT '',
	'Password' varchar(30) NOT NULL,
	'PasswordQuestion' varchar(255) DEFAULT NULL,
	'PasswordAnswer' varchar(255) DEFAULT NULL,
	'IsApproved' tinyint(1) NOT NULL DEFAULT 0,
	'LastActivityDate' datetime DEFAULT NULL,
	'LastLoginDate' datetime DEFAULT NULL,
	'LastPasswordChangedDate' datetime DEFAULT NULL,
	'CreationDate' datetime NOT NULL,
	'IsOnline' tinyint(1) NOT NULL DEFAULT 0,
	'IsLockedOut' tinyint(1) NOT NULL DEFAULT 0,
	'LastLockedOutDate' datetime DEFAULT NULL,
	'FailedPasswordAttemptCount' int NOT NULL DEFAULT 0,
	'FailedPasswordAttemptWindowStart' datetime DEFAULT null,
	'FailedPasswordAnswerAttemptCount' int NOT NULL DEFAULT 0,
	'FailedPasswordAnswerAttemptWindowStart' datetime DEFAULT NULL,
	PRIMARY KEY('ID')
);

CREATE TABLE 'rdv_roles'(
	Rolename varchar(255) NOT NULL,
	ApplicationName varchar(255) NOT NULL
);

CREATE INDEX idxRoles ON 'rdv_roles' ('Rolename','ApplicationName');

CREATE TABLE 'rdv_UsersInRoles'(
	Username varchar(255) NOT NULL,
	Rolename varchar(255) NOT NULL,
	ApplicationName varchar(100) NOT NULL
);

CREATE INDEX idxUsersInRoles ON 'rdv_UsersInRoles' ('Username','Rolename','ApplicationName');