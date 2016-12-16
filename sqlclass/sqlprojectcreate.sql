create table customer 
( Customer_ID number (4)constraint Cus_ID_PK primary key,
    LastName varchar (20) constraint Cus_LN_NN Not null,
    FirstName varchar (20) constraint Cus_FN_NN not null,
    DateofBirth date default sysdate,
    Mobile_no char(10) constraint Cus_Mob_NO_UK unique,
    Gender char(1),
    EmailAddress varchar2(25 byte) CONSTRAINT Cus_Mail_NN not null constraint Cus_Mail_UK unique,
    HomeAddress varchar2(25byte),
    WorkAddress varchar2(25byte)
) ;

create table Payment
(Payment_id number(4) constraint Pay_ID_PK primary key,
    Payment_type varchar(20) constraint Pay_TY_NN not null,
    Booking_Fare number(6,2),
    Base_Fare number(6,2),
    Additional_Fare number(7,2),
    Waiting_Fare number(6,2),
    Total_fare number(7,2),
    Cancellaiton_Fare number(4,2),
    Customer_ID number(4) constraint Pay_CusID_FK REFERENCES customer(Customer_id)
);

create table driver
(Driver_ID number(4) constraint Dri_ID_PK primary key,
    Last_Name varchar(20) constraint Dri_LN_NN not null,
    First_Name varchar(20) constraint DRI_FN_NN not null,
    DateofBirth date default sysdate,
    Mobile_no char(10) constraint DRI_Mob_NO_UK unique,
    Gender char(1),
    EmailAddress varchar2(25 byte) CONSTRAINT DRI_Mail_NN not null constraint DRI_Mail_UK unique
);

create table RideRecord
(Ride_id number(4) constraint RR_ID_PK primary key,
    Pickup_LOcation varchar2(25 byte) constraint RR_PL_NN not null,
    Destination_LOcation varchar2(25 byte) constraint RR_DL_NN not null,
    Time_duration_in_min number(4) constraint RR_TD_NN not null,
    Distance number(4),
    Total_Fare number(7,2),
    Customer_ID number(4) constraint RR_CusID_FK REFERENCES customer(Customer_id),
    Driver_ID number(4) constraint RR_DriID_FK references driver(driver_id)
);

create table Car
(Car_Name_Plate varchar(7) constraint CAR_CNP_PK primary key,
    Car_Type varchar(10) constraint CAR_CT_NN not null,
    Car_brand varchar(15) constraint CAR_CB_NN not null,
    Car_Colour varchar(10) constraint CAR_CC_NN not null,
    DateofManufacture date default sysdate,
    Car_Capacity number (2),
    Insurance char(1),
    Driver_ID number(4) constraint CAR_DriID_FK references driver(driver_id)
);

create table Customer_Credit
(Customer_Credit_Num number(4) constraint CC_CN_PK primary key,
    Recent_Cancellation_Date date default sysdate,
    Change_of_Credit number(4),
    Customer_ID number(4) constraint CC_CusID_FK REFERENCES customer(Customer_id)
);

create table Driver_Rating
(Driver_Rating_Number number(4) constraint DR_DRN_Pk primary key,
    Satisfaction_Level varchar2(3),
    Safety_ranking number(1),
    Comments varchar2(25 byte),
    Driver_ID number(4) constraint DR_DriID_FK references driver(driver_id)
);

