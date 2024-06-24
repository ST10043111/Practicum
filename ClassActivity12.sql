  ALTER SESSION SET "_ORACLE_SCRIPT"=true;
SET SERVEROUTPUT ON;

--Question 1
-- Create Instructor table
CREATE TABLE Insructor
(

ins_ID VARCHAR2(100) PRIMARY KEY NOT NULL,
ins_fname VARCHAR2(100) NOT NULL,	
ins_sname VARCHAR2(100) NOT NULL,
ins_contact CHAR(10) NOT NULL,
ins_level  INT NOT NULL,
CONSTRAINT pK_INSTRUCTOR PRIMARY KEY(ins_ID) 
);

-- Create Customer table
CREATE TABLE Customer (
    CUST_ID VARCHAR(10) PRIMARY KEY,
    CUST_FNAME VARCHAR(50) NOT NULL,
    CUST_SNAME VARCHAR(50) NOT NULL,
    CUST_ADDRESS VARCHAR(100) NOT NULL,
    CUST_CONTACT VARCHAR(15) NOT NULL
);

-- Create Dive table
CREATE TABLE Dive (
    DIVE_ID INT PRIMARY KEY,
    DIVE_NAME VARCHAR(50) NOT NULL,
    DIVE_DURATION VARCHAR(20) NOT NULL,
    DIVE_LOCATION VARCHAR(50) NOT NULL,
    DIVE_EXP_LEVEL INT NOT NULL,
    DIVE_COST DECIMAL(10, 2) NOT NULL
);

-- Create Dive_Event table
CREATE TABLE Dive_Event (
    DIVE_EVENT_ID VARCHAR(10) PRIMARY KEY,
    DIVE_DATE DATE NOT NULL,
    DIVE_PARTICIPANTS INT NOT NULL,
    INS_ID INT,
    CUST_ID VARCHAR(10),
    DIVE_ID INT,
    FOREIGN KEY (INS_ID) REFERENCES Instructor(INS_ID),
    FOREIGN KEY (CUST_ID) REFERENCES Customer(CUST_ID),
    FOREIGN KEY (DIVE_ID) REFERENCES Dive(DIVE_ID)
);





-- Insert into Instructor table
INSERT INTO Instructor (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(101, 'James', 'Willis', '0843569851', 7);
INSERT INTO Instructor (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(102, 'Sam', 'Wait', '0763698521', 5);
INSERT INTO Instructor (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(103, 'Sally', 'Gumede', '0785985321', 8);
INSERT INTO Instructor (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(104, 'Bob', 'Du Preez', '0796360857', 3);
INSERT INTO Instructor (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(105, 'Simon', 'Jones', '0826598741', 9);


-- Insert into Customer table
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C115', 'Heinrich', 'Willis', '3 Main Road', '0821532659');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C116', 'David', 'Watson', '13 Cape Road', '0769568547');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C117', 'Waldo', 'Smith', '3 Mountain Road', '0732565852');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C118', 'Alex', 'Hanson', '8 Circle Road', '0762365857');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C119', 'Kuhle', 'Bitterhout', '15 Main Road', '0821235258');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C120', 'Thando', 'Zolani', '88 Summer Road', '0847541254');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C121', 'Phillip', 'Jackson', '3 Long Road', '0745556658');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C122', 'Sarah', 'Jones', '7 Sea Road', '0814754755');
INSERT INTO Customer (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES ('C123', 'Catherine', 'Howard', '31 Lake Side Road', '0822232521');


--- Insert into Dive table
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (550, 'Shark Dive', '3 hours', 'Shark Point', 8, 500);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (551, 'Coral Dive', '1 hour', 'Break Point', 7, 300);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (552, 'Wave Crescent', '2 hours', 'Ship wreck ally', 3, 800);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (553, 'Underwater Exploration', '1 hour', 'Coral ally', 2, 250);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (554, 'Underwater Adventure', '3 hours', 'Sandy Beach', 3, 750);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (555, 'Deep Blue Ocean', '30 minutes', 'Lazy Waves', 2, 120);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (556, 'Rough Seas', '1 hour', 'Pipe', 9, 700);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (557, 'White Water', '2 hours', 'Drifts', 5, 200);
INSERT INTO Dive (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES (558, 'Current Adventure', '2 hours', 'Rock Lands', 3, 150);

--QUESTION 2

-- Creates Administrator User
CREATE USER Admin IDENTIFIED BY Password2;

-- Grants Privileges to Administrator User
GRANT ALL PRIVILEGES TO Admin WITH GRANT OPTION;

-- Creates General User
CREATE USER Tommy IDENTIFIED BY OpenDoor;

-- Grants Privileges to General User
GRANT SELECT, INSERT, UPDATE ON PracticumADDB6311 TO Tommy;
--Revokes Privileges from to General User
REVOKE DELETE ON  PracticumADDB6311 FROM Tommy;



SELECT
    i.INS_FNAME || i.INS_SNAME AS INSTRUCTOR,
    c.CUST_FNAME|| c.CUST_SNAME AS CUSTOMER,
    d.DIVE_LOCATION AS DIVE_LOCATION,
    e.DIVE_PARTICIPANTS AS DIVE_PARTICIPANTS
FROM
    DIVE_EVENT e
INNER JOIN
    INSTRUCTOR i ON e.INS_ID = i.INS_ID
INNER JOIN
   CUSTOMER c ON e.CUST_ID = c.CUST_ID
INNER JOIN
    Dive d ON e.DIVE_ID = d.DIVE_ID
WHERE
    e.DIVE_PARTICIPANTS BETWEEN 8 AND 10;


--Question 4
SET SERVEROUTPUT ON;
DECLARE
    -- Define variables to hold data from the query
    v_dive_name Dive.DIVE_NAME%TYPE;
    v_dive_date Dive_Event.DIVE_DATE%TYPE;
    v_participants Dive_Event.DIVE_PARTICIPANTS%TYPE;
BEGIN
    -- FOR loop to iterate over the query results directly
    FOR rec IN (
        SELECT DIVE_NAME, DIVE_DATE, DIVE_PARTICIPANTS
        FROM Dive_Event e
        JOIN Dive d ON e.DIVE_ID = d.DIVE_ID
        WHERE DIVE_PARTICIPANTS >= 10
    )
    LOOP
        -- Assign values from the current row to variables
        v_dive_name := rec.DIVE_NAME;
        v_dive_date := rec.DIVE_DATE;
        v_participants := rec.DIVE_PARTICIPANTS;
        
        DBMS_OUTPUT.PUT_LINE('DIVE NAME: ' || v_dive_name);
        DBMS_OUTPUT.PUT_LINE('DIVE DATE: ' || v_dive_date);
        DBMS_OUTPUT.PUT_LINE('PARTICIPANTS: ' || v_participants);
        DBMS_OUTPUT.PUT_LINE('--------------------------------------');
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No data found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/


--Question 5
SET SERVEROUTPUT ON;
DECLARE
   
BEGIN
    FOR rec IN (
        SELECT c.CUST_FNAME || c.CUST_SNAME AS CUSTOMER,
               d.DIVE_NAME,
               e.DIVE_PARTICIPANTS,
               CASE 
                   WHEN e.DIVE_PARTICIPANTS <= 4 THEN '1 instructor required'
                   WHEN e.DIVE_PARTICIPANTS BETWEEN 5 AND 7 THEN '2 instructors required'
                   ELSE '3 instructors required'
               END AS STATUS
          FROM Dive_Event e
          JOIN Customer c ON e.CUST_ID = c.CUST_ID
          JOIN Dive d ON e.DIVE_ID = d.DIVE_ID
         WHERE d.DIVE_COST > 500
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('CUSTOMER: ' || rec.CUSTOMER );
        DBMS_OUTPUT.PUT_LINE(' DIVE NAME: ' || rec.DIVE_NAME );
        DBMS_OUTPUT.PUT_LINE(' PARTICIPANTS: ' || rec.DIVE_PARTICIPANTS );
        DBMS_OUTPUT.PUT_LINE('STATUS: ' || rec.STATUS);
        DBMS_OUTPUT.PUT_LINE('--------------------------------------');
    END LOOP;
END;
/


--Question 6

CREATE OR REPLACE VIEW Vw_Dive_Event AS
SELECT 
    e.INS_ID, 
    e.CUST_ID, 
    c.CUST_ADDRESS, 
    d.DIVE_DURATION, 
    e.DIVE_DATE
FROM 
    Dive_Event e
INNER JOIN
    Customer c ON e.CUST_ID = c.CUST_ID
INNER JOIN
    Dive d ON e.DIVE_ID = d.DIVE_ID
WHERE 
    e.DIVE_DATE < TO_DATE('19-JUL-2017', 'DD-MON-YYYY');


--Question 7
CREATE OR REPLACE TRIGGER New_Dive_Event
BEFORE INSERT ON Dive_Event
FOR EACH ROW
BEGIN
    IF :NEW.DIVE_PARTICIPANTS <= 0 OR :NEW.DIVE_PARTICIPANTS > 20 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Participants must be between 1 and 20');
    END IF;
END;
-- Test participants <= 0
BEGIN
    INSERT INTO Dive_Event (DIVE_ID, INS_ID, CUST_ID, DIVE_DATE, DIVE_PARTICIPANTS)
    VALUES (1, 1, 1, TO_DATE('2023-06-24', 'YYYY-MM-DD'), 0);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;




--Question 8
CREATE OR REPLACE PROCEDURE sp_Customer_Details(
    p_cust_id IN Customer.CUST_ID%TYPE,
    p_dive_date IN Dive_Event.DIVE_DATE%TYPE
)
IS
    v_customer VARCHAR2(100);
    v_dive_name VARCHAR2(50);
BEGIN
    SELECT c.CUST_FNAME|| c.CUST_SNAME, d.DIVE_NAME
    INTO v_customer, v_dive_name
    FROM Dive_Event e
    INNER JOIN Customer c ON e.CUST_ID = c.CUST_ID
    INNER JOIN Dive d ON e.DIVE_ID = d.DIVE_ID
    WHERE e.CUST_ID = p_cust_id AND e.DIVE_DATE = p_dive_date;
    
    DBMS_OUTPUT.PUT_LINE('CUSTOMER DETAILS: ' || v_customer || ' booked for the ' || v_dive_name || ' on the ' || TO_CHAR(p_dive_date, 'DD/MON/YYYY'));
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No customer found for the given ID and date');
END sp_Customer_Details;


 
 
