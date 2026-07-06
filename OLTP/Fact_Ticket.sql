CREATE TABLE FactTicket (
    SK_Fact_Tickets Number  PRIMARY KEY,

    Passenger_Key NUMBER NOT NULL,
    Flight_Key NUMBER NOT NULL,
    FARE_CLASS_SK NUMBER NOT NULL,
    Date_Key VARCHAR2(10) NOT NULL,

    Ticket_ID NUMBER,
    Reservation_ID NUMBER,
    Ticket_Number VARCHAR2(30),
    Seat_Number VARCHAR2(10),

    Base_Fare_USD NUMBER(10,2),
    Tax_Amount_USD NUMBER(10,2),
    Fee_Amount_USD NUMBER(10,2),
    Discount_Amount_USD NUMBER(10,2),
    Final_Ticket_Amount_USD NUMBER(10,2),

    Ticket_Status VARCHAR2(30),
    Miles_Earned NUMBER,
    Miles_Redeemed NUMBER,

    CONSTRAINT FK_FACT_TICKET_PASSENGER FOREIGN KEY (Passenger_Key) REFERENCES DimPassenger(Passenger_Key),

    CONSTRAINT FK_FACT_TICKET_FLIGHT FOREIGN KEY (Flight_Key) REFERENCES DIM_FLIGHT(Flight_Key),

    CONSTRAINT FK_FACT_TICKET_FARE FOREIGN KEY (FARE_CLASS_SK) REFERENCES dim_fare_class(FARE_CLASS_SK),

    CONSTRAINT FK_FACT_TICKET_DATE FOREIGN KEY (Date_Key) REFERENCES Dim_Date(Date_Key)
);


select * from FactTicket;







