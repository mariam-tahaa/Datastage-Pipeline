CREATE TABLE FACT_RESERVATION_Tables (
    Reservation_SK NUMBER NOT NULL,
    Passenger_Key NUMBER NOT NULL,
    Flight_Key NUMBER NOT NULL,
    Fare_Key NUMBER NOT NULL,
    Channel_Key NUMBER NOT NULL,
    PROMO_Key NUMBER,

    Booking_Date_Key VARCHAR2(10) NOT NULL,
    Departure_Date_Key VARCHAR2(10) NOT NULL,
    Arrival_Date_Key VARCHAR2(10) NOT NULL,

    Reservation_ID NUMBER NOT NULL,

    Seat_Number VARCHAR2(10),
    Payment_Method VARCHAR2(30),
    Amount_Paid NUMBER(10,2),
    Miles_Earned NUMBER,
    Miles_Redeemed NUMBER,
    Is_Upgrade CHAR(1),
    Status VARCHAR2(30),

    CONSTRAINT PK_FACT_RESERVATION
       PRIMARY KEY (Reservation_SK),

    CONSTRAINT FK_FACT_RES_PASSENGER
        FOREIGN KEY (Passenger_Key)
        REFERENCES DIMPASSENGER(Passenger_Key),

    CONSTRAINT FK_FACT_RES_FLIGHT
        FOREIGN KEY (Flight_Key)
        REFERENCES DIM_FLIGHT(Flight_Key),

    CONSTRAINT FK_FACT_RES_FARE
        FOREIGN KEY (Fare_Key)
        REFERENCES DIM_FARE_CLASS(FARE_CLASS_SK),

    CONSTRAINT FK_FACT_RES_CHANNEL
        FOREIGN KEY (Channel_Key)
        REFERENCES DIM_BOOKING_CHANNEL(Channel_Key),

    CONSTRAINT FK_FACT_RES_BOOK_DATE
        FOREIGN KEY (Booking_Date_Key)
        REFERENCES DIM_DATE(Date_Key),

    CONSTRAINT FK_FACT_RES_DEP_DATE
        FOREIGN KEY (Departure_Date_Key)
        REFERENCES DIM_DATE(Date_Key),

    CONSTRAINT FK_FACT_RES_ARR_DATE
        FOREIGN KEY (Arrival_Date_Key)
        REFERENCES DIM_DATE(Date_Key)
);

select * from FACT_RESERVATION_Tables;