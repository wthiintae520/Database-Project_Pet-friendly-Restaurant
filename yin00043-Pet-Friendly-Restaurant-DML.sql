-- Filename: Pet-Friendly-Restaurant-DML.sql
-- Description: script to populate Pet-Friendly Restaurant Database
-- CST 8215
-- Author: Yunting Yin
-- Year: 2021
-- Last Modified: 9 Apr 2021





INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0001', 'Andre Layton', 6134529677, 1 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0002', 'Bennett Knox', 6139632587, 1 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0003', 'Bess Till', 6133002211, 0 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0004', 'Ruth Wardell', 6135552236, 2 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0005', 'Miss Audrey', 6136634752, 0 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0006', 'Zarah Ferami', 6131811566, 3 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0007', 'LJ Folger', 6131820202, 1 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0008', 'Melanie Cavill', 6130211520, 1 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0009', 'Sam Roche', 6132020211, 2 );
INSERT INTO CUSTOMER_T( Cust_Membership, Cust_Name, Cust_Phone, Cust_Pet ) VALUES( 'C0010', 'Javier de La Torre', 6131555563, 2 );

INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0001', 'Josie', 'Dog', 'C0001' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0002', 'John', 'Cat', 'C0002' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0003', 'Winnie', 'Dog', 'C0004' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0004', 'Alexandra', 'Dog', 'C0004' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0005', 'Joseph', 'Cat', 'C0006' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0006', 'Pike', 'Dog', 'C0006' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0007', 'Jakes', 'Cat', 'C0006' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0008', 'Jinju', 'Cat', 'C0007' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0009', 'Jack', 'Dog', 'C0008' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0010', 'Tristan', 'Dog', 'C0009' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0011', 'Rajiv', 'Dog', 'C0009' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0012', 'Miles', 'Dog', 'C0010' );
INSERT INTO PET_T( Pet_Membership, Pet_Name, Pet_Type, Own_Membership ) VALUES( 'P0013', 'Breachman', 'Cat', 'C0010' );

INSERT INTO MEAT_T( Meat_Number, Meat_Name, Meat_Quantity, Meat_Price, Pet_Membership ) VALUES( 'M01', 'Pork', 3, 13.40, 'P0008' );
INSERT INTO MEAT_T( Meat_Number, Meat_Name, Meat_Quantity, Meat_Price, Pet_Membership ) VALUES( 'M02', 'Beef', 3, 13.34, 'P0013' );
INSERT INTO MEAT_T( Meat_Number, Meat_Name, Meat_Quantity, Meat_Price, Pet_Membership ) VALUES( 'M03', 'Chicken', 3, 12.95, 'P0003' );
INSERT INTO MEAT_T( Meat_Number, Meat_Name, Meat_Quantity, Meat_Price, Pet_Membership ) VALUES( 'M04', 'Beyond Meat', 2, 33.06, 'P0009' );
INSERT INTO MEAT_T( Meat_Number, Meat_Name, Meat_Quantity, Meat_Price, Pet_Membership ) VALUES( 'M05', 'Barramundi', 1, 36.73, 'P0012' );
INSERT INTO MEAT_T( Meat_Number, Meat_Name, Meat_Quantity, Meat_Price, Pet_Membership ) VALUES( 'M06', 'Lamb', 3, 25.70, 'P0009' );

INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V01', 'Green Beans', 15, 3.96 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V02', 'Sweet Bell Pepper', 3, 7.94 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V03', 'Peas', 42, 2.64 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V04', 'Basil', 11, 39.4 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V05', 'Potato', 15, 0.99 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V06', 'Kale', 10, 11.94 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V07', 'Onion', 15, 1.45 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V08', 'Spinach', 12, 8.83 );
INSERT INTO VEGETABLE_T( Vege_Number, Vege_Name, Vege_Quantity, Vege_Price ) VALUES( 'V09', 'Mushrooms', 7, 10.90 );

INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H01', 'BBQ Pork Chops', 13, 'M01', 'V01', 'C0003' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H02', 'Beef and Pepper Bake', 15, 'M02', 'V02', NULL );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H03', 'Meatball Stew', 14, 'M02', 'V03', 'C0009' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H04', 'Pesto Chicken', 12, 'M03', 'V04', 'C0004' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H05', 'Grilled Potato', 10, NULL, 'V05', 'C0010' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H06', 'Sausage with Sweet Bell Pepper', 12, 'M01', 'V02', NULL );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H07', 'Sheet Pan Chicken', 11, 'M03', 'V05', 'C0005' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H08', 'Asian Kale Salad', 15, 'M04', 'V06', NULL );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H09', 'Pork and Caramelized Onion Patty', 13, 'M01', 'V07', NULL );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H10', 'Crispy Barramundi', 16, 'M05', 'V01', 'C0006' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H11', 'Lamb Tacos', 15, 'M06', NULL, 'C0001' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H12', 'Steak', 15, 'M02', 'V05', 'C0007' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H13', 'Crispy Chicken', 12, 'M03', 'V08', 'C0002' );
INSERT INTO HUMANMEAL_T( Meal_Number, Meal_Name, Meal_Price, Ingr_Meat, Ingr_Vegetable, Cust_Membership ) VALUES( 'H14', 'Creamy Mushrooms', 10, NULL, 'V09', 'C0008' );





-- Metadata

SELECT column_name, data_type, character_maximum_length FROM INFORMATION_SCHEMA.COLUMNS WHERE
TABLE_NAME = 'customer_t' OR
TABLE_NAME = 'pet_t' OR
TABLE_NAME = 'meat_t' OR
TABLE_NAME = 'vegetable_t' OR
TABLE_NAME = 'humanmeal_t';





-- Write simple SQL statements using SELECT and WHERE for at least three entities.

SELECT *
FROM VEGETABLE_T
WHERE Vege_Quantity < 10;

SELECT Cust_Membership, Cust_Name
FROM CUSTOMER_T
WHERE Cust_Membership = ( SELECT Cust_Membership FROM HUMANMEAL_T WHERE Ingr_Meat = ( SELECT Meat_Number FROM MEAT_T WHERE Meat_Name = 'Barramundi' ) );

SELECT Meal_Number, Meal_Name, Meal_Price
FROM HUMANMEAL_T
WHERE Cust_Membership IS NULL;





-- LEFT OUTER JOIN 

SELECT PET_T.Pet_Membership, PET_T.Pet_Name, PET_T.Pet_Type, PET_T.Own_Membership, CUSTOMER_T.Cust_Membership, CUSTOMER_T.Cust_Name, CUSTOMER_T.Cust_Pet
FROM PET_T
LEFT JOIN CUSTOMER_T
ON PET_T.Own_Membership = CUSTOMER_T.Cust_Membership;





-- RIGHT OUTER JOIN

SELECT MEAT_T.Meat_Number, MEAT_T.Meat_Name, MEAT_T.Pet_Membership, PET_T.Pet_Membership, PET_T.Pet_Name, PET_T.Pet_Type
FROM PET_T
RIGHT JOIN MEAT_T
ON MEAT_T.Pet_Membership = PET_T.Pet_Membership;





-- Write one UNION query.

SELECT MEAT_T.Meat_Number, MEAT_T.Meat_Name, MEAT_T.Meat_Quantity, MEAT_T.Meat_Price
FROM
MEAT_T
UNION
SELECT VEGETABLE_T.Vege_Number, VEGETABLE_T.Vege_Name, VEGETABLE_T.Vege_Quantity, VEGETABLE_T.Vege_Price
FROM VEGETABLE_T;





-- check VIEW

SELECT * FROM CAT_V;

SELECT * FROM DOG_V;





-- eof: Pet-Friendly-Restaurant-DML.sql