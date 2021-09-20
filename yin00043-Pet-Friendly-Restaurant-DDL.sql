-- FileName: Pet-Friendly-Restaurant-DDL.sql
-- Description: script to create Pet-Friendly Restaurant database, create TABLEs
-- CST 8215
-- Author: Yunting Yin
-- Year: 2021
-- Last Modified: 9 Apr 2021





DROP VIEW IF EXISTS CAT_V;
DROP VIEW IF EXISTS DOG_V;

DROP TABLE IF EXISTS CUSTOMER_T CASCADE;
DROP TABLE IF EXISTS PET_T CASCADE;

DROP TABLE IF EXISTS CUSTOMER_T;
DROP TABLE IF EXISTS PET_T;
DROP TABLE IF EXISTS HUMANMEAL_T;
DROP TABLE IF EXISTS MEAT_T;
DROP TABLE IF EXISTS VEGETABLE_T;





CREATE TABLE CUSTOMER_T (
  Cust_Membership        CHAR( 5 ),
  Cust_Name              VARCHAR( 30 ) NOT NULL,
  Cust_Phone             VARCHAR( 15 ) NOT NULL,
  Cust_Pet               CHAR( 2 ),
  CONSTRAINT CUSTOMER_PK PRIMARY KEY( Cust_Membership )
);

CREATE TABLE PET_T (
  Pet_Membership    CHAR( 5 ),
  Pet_Name          VARCHAR( 30 ) NOT NULL,
  Pet_Type          VARCHAR( 10 ) NOT NULL,
  Own_Membership    CHAR( 5 ),
  CONSTRAINT PET_PK PRIMARY KEY( Pet_Membership ),
  CONSTRAINT PET_FK FOREIGN KEY( Own_Membership ) REFERENCES CUSTOMER_T( Cust_Membership )
);

CREATE TABLE MEAT_T (
  Meat_Number        CHAR( 3 ),
  Meat_Name          VARCHAR( 15 ) NOT NULL,
  Meat_Quantity      NUMERIC( 5 ) NOT NULL,
  Meat_Price         NUMERIC( 5, 2 ) NOT NULL,
  Pet_Membership     CHAR( 5 ),
  CONSTRAINT MEAT_PK PRIMARY KEY( Meat_Number ),
  CONSTRAINT MEAT_FK FOREIGN KEY( Pet_Membership ) REFERENCES PET_T ( Pet_Membership ),
  CONSTRAINT MEAT_CK CHECK( Meat_Price >= 0 )
);

CREATE TABLE VEGETABLE_T (
  Vege_Number        CHAR( 3 ),
  Vege_Name          VARCHAR( 20 ) NOT NULL,
  Vege_Quantity      NUMERIC( 5 ) NOT NULL,
  Vege_Price         NUMERIC( 5, 2 ) NOT NULL,
  CONSTRAINT VEGETABLE_PK PRIMARY KEY( Vege_Number ),
  CONSTRAINT VEGETABLE_CK CHECK( Vege_Price >= 0 )
);

CREATE TABLE HUMANMEAL_T (
  Meal_Number              CHAR( 3 ),
  Meal_Name                VARCHAR( 35 ) NOT NULL,
  Meal_Price               NUMERIC( 5, 2 ) NOT NULL,
  Ingr_Meat                CHAR( 3 ),
  Ingr_Vegetable           CHAR( 3 ),
  Cust_Membership          CHAR( 8 ),
  CONSTRAINT HUMANMEAL_PK  PRIMARY KEY( Meal_Number ),
  CONSTRAINT HUMANMEAL_FK1 FOREIGN KEY( Ingr_Meat)      REFERENCES MEAT_T     ( Meat_Number ),
  CONSTRAINT HUMANMEAL_FK2 FOREIGN KEY( Ingr_Vegetable) REFERENCES VEGETABLE_T( Vege_Number ),
  CONSTRAINT HUMANMEAL_FK3 FOREIGN KEY( Cust_Membership) REFERENCES CUSTOMER_T( Cust_Membership )
);

CREATE VIEW CAT_V AS
SELECT * 
FROM PET_T
WHERE Pet_Type = 'Cat';

CREATE VIEW DOG_V AS
SELECT * 
FROM PET_T
WHERE Pet_Type = 'Dog';





-- eof: Pet-Friendly-Restaurant-DDL.sql