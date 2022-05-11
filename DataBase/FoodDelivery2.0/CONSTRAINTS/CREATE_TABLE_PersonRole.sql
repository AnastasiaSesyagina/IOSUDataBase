﻿USE FoodDelivery2;

CREATE TABLE PersonRole
(
	 ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID()
	  CONSTRAINT PK_PersonRole PRIMARY KEY
	, ID_Person UNIQUEIDENTIFIER NOT NULL
	  CONSTRAINT FK_Person FOREIGN KEY 
	  REFERENCES Person(ID)
	  ON DELETE CASCADE 
	  ON UPDATE CASCADE
	, ID_Role UNIQUEIDENTIFIER NOT NULL
	  CONSTRAINT FK_Role FOREIGN KEY
	  REFERENCES [Role](ID)
	  ON DELETE NO ACTION
	  ON UPDATE CASCADE
);

--DROP TABLE [PersonRole];