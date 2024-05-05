USE michaelr_Capstone;

/*
DROP TABLE IF EXISTS HW_Infrastructure;
DROP TABLE IF EXISTS HW_Travel;
DROP TABLE IF EXISTS Travelers;
DROP TABLE IF EXISTS Vehicles;
DROP TABLE IF EXISTS MotorFuel;
DROP TABLE IF EXISTS Dept;

DROP TABLE IF EXISTS Year;
DROP TABLE IF EXISTS State;
*/
CREATE TABLE Year (
    year_ID int,
    year_Value int,
    PRIMARY KEY (year_ID)
) ENGINE=InnoDB;
CREATE TABLE State (
    state_ID int,
    state_Value char(64),
    PRIMARY KEY (state_ID)
)ENGINE=InnoDB;

CREATE TABLE HW_Infrastructure (
    hw_Infrastructure_ID INT,
    year_ID INT,
    state_ID INT,
    Rural_Road_Length INT,
    Urban_Road_Length INT,
    Public_Road_Length_Per_State INT,
    Miles_Of_Open_Road_Per_State INT,
    Miles_Of_Closed_Road_Per_State INT,
    Highway_Lane_Length_Per_State INT,
	PRIMARY KEY (hw_Infrastructure_ID),
    FOREIGN KEY (year_ID) REFERENCES Year(year_ID),
    FOREIGN KEY (state_ID) REFERENCES State(state_ID)
) ENGINE=InnoDB;
CREATE TABLE HW_Travel (
    hw_Travel_ID INT,
    year_ID INT,
    state_ID INT,
    Vehicle_Miles_Of_Travel_In_Rural_Areas INT, #remove me
    Vehicle_Miles_Of_Travel_In_Urban_Areas INT, #remove me
    Function_System_Travel_Rural INT,
    Function_System_Travel_Urban INT,
    Aid_Highway_Travel INT,
    PRIMARY KEY (hw_Travel_ID),
    FOREIGN KEY (year_ID) REFERENCES Year(year_ID),
    FOREIGN KEY (state_ID) REFERENCES State(state_ID)
) ENGINE=InnoDB;
CREATE TABLE Travelers (
    travelers_ID INT,
    year_ID INT,
    state_ID INT,
    Number_Of_Male_Drivers INT,
    Number_Of_Female_Drivers INT,
    Drivers_Aged_Under_16 INT,
    Drivers_Aged_16 INT,
    Drivers_Aged_17 INT,
    Drivers_Aged_18 INT,
    Drivers_Aged_19 INT,
    Drivers_Aged_20 INT,
    Drivers_Aged_21 INT,
    Drivers_Aged_22 INT,
    Drivers_Aged_23 INT,
    Drivers_Aged_24 INT,
    Drivers_Aged_25_29 INT,
    Drivers_Aged_30_34 INT,
    Drivers_Aged_35_39 INT,
    Drivers_Aged_40_44 INT,
    Drivers_Aged_44_49 INT,
    Drivers_Aged_50_54 INT,
    Drivers_Aged_55_59 INT,
    Drivers_Aged_56_60 INT,
    Drivers_Aged_64_69 INT,
    Drivers_Aged_70_74 INT,
    Drivers_Aged_75_79 INT,
    Drivers_Aged_80_84 INT,
    Drivers_Aged_Over_85 INT,
    Number_Of_Licensed_Drivers INT,
    PRIMARY KEY (travelers_ID),
    FOREIGN KEY (year_ID) REFERENCES Year(year_ID),
    FOREIGN KEY (state_ID) REFERENCES State(state_ID)
) ENGINE=InnoDB;
CREATE TABLE Vehicles (
    vehicles_ID INT PRIMARY KEY,
    year_Value INT,
    state_Name INT,
    Number_Of_Automobiles INT,
    Number_Of_Buses INT,
    Number_Of_Trucks INT,
    Number_Of_Motorcycles INT,
    Number_Of_Total_Vehicles INT,
    FOREIGN KEY (year_Value) REFERENCES Year(year_ID),
    FOREIGN KEY (state_Name) REFERENCES State(state_ID)
) ENGINE=InnoDB;
CREATE TABLE MotorFuel (
    motor_Fuel_ID INT PRIMARY KEY,
    year_ID INT,
    state_ID INT,
    Highway_Use_Of_Gasoline INT,
    Total_Motor_Fuel_Volume_Taxed INT,
    Gasoline_Gasohol_Reported INT,
    FOREIGN KEY (year_ID) REFERENCES Year(year_ID),
    FOREIGN KEY (state_ID) REFERENCES State(state_ID)
) ENGINE=InnoDB;
CREATE TABLE Dept (
    dept_ID int,
    year_ID INT,
    state_ID INT,
    State_Debt_At_Start_Of_Year INT,
    State_Debt_At_End_Of_Year INT,
    State_Debt_Gained INT,
    State_Debt_Retired INT,
    PRIMARY KEY (dept_ID),
    FOREIGN KEY (year_ID) REFERENCES Year(year_id),
    FOREIGN KEY (state_ID) REFERENCES State(state_ID)
)ENGINE=InnoDB;
