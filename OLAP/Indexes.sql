---------------- FactTicket ----------------

CREATE INDEX IDX_FACT_TICKET_PASSENGER ON FactTicket (Passenger_Key);

CREATE INDEX IDX_FACT_TICKET_FLIGHT ON FactTicket (Flight_Key);

CREATE BITMAP INDEX IDX_FACT_TICKET_FARE ON FactTicket (FARE_CLASS_SK);

CREATE INDEX IDX_FACT_TICKET_DATE ON FactTicket (Date_Key);

CREATE INDEX IDX_FACT_TICKET_RESERVATION ON FactTicket (Reservation_ID);

CREATE INDEX IDX_FACT_TICKET_NUMBER ON FactTicket (Ticket_Number);

---------------------------------------------------------------------------------------------------

---------------- FACT_RESERVATION_TABLES ----------------

CREATE INDEX IDX_RES_PASSENGER ON FACT_RESERVATION_TABLES (Passenger_Key);

CREATE INDEX IDX_RES_FLIGHT ON FACT_RESERVATION_TABLES (Flight_Key);

CREATE BITMAP INDEX IDX_RES_CHANNEL ON FACT_RESERVATION_TABLES (Channel_Key);

CREATE BITMAP INDEX IDX_RES_FARE ON FACT_RESERVATION_TABLES (Fare_Key);

CREATE INDEX IDX_RES_BOOKDATE ON FACT_RESERVATION_TABLES (Booking_Date_Key);

CREATE INDEX IDX_RES_RESERVATION ON FACT_RESERVATION_TABLES (Reservation_ID);

---------------------------------------------------------------------------------------------------

---------------- FactFlightCosts ----------------

CREATE INDEX IDX_COST_FLIGHT ON FactFlightCosts (Flight_Key);

CREATE INDEX IDX_COST_AIRCRAFT ON FactFlightCosts (Aircraft_Key);

CREATE INDEX IDX_COST_DATE ON FactFlightCosts (Date_Key);

---------------------------------------------------------------------------------------------------

---------------- FACT_CUSTOMER_INTERACTION ----------------

CREATE INDEX IDX_INTERACTION_PASSENGER ON FACT_CUSTOMER_INTERACTION (PASSENGER_KEY);

CREATE INDEX IDX_INTERACTION_DATE ON FACT_CUSTOMER_INTERACTION (DATE_KEY);

CREATE INDEX IDX_INTERACTION_RESERVATION ON FACT_CUSTOMER_INTERACTION (RESERVATION_ID);

CREATE BITMAP INDEX IDX_INTERACTION_TYPE ON FACT_CUSTOMER_INTERACTION (INTERACTION_TYPE);

CREATE BITMAP INDEX IDX_INTERACTION_SEVERITY ON FACT_CUSTOMER_INTERACTION (SEVERITY);

---------------------------------------------------------------------------------------------------

---------------- Fact_Overnight_Stay ----------------

CREATE INDEX IDX_STAY_PASSENGER ON Fact_Overnight_Stay (Passenger_Key);

CREATE INDEX IDX_STAY_CHECKIN ON Fact_Overnight_Stay (CHECK_IN_DATE_KEY);

CREATE INDEX IDX_STAY_CHECKOUT ON Fact_Overnight_Stay (CHECK_OUT_DATE_KEY);

CREATE INDEX IDX_STAY_RESERVATION ON Fact_Overnight_Stay (Reservation_ID);

CREATE INDEX IDX_STAY_CITY ON Fact_Overnight_Stay (City);

---------------------------------------------------------------------------------------------------

---------------- FACT_FLIGHT_UPGRADE ----------------

CREATE INDEX IDX_UPGRADE_PASSENGER ON FACT_FLIGHT_UPGRADE (PASSENGER_KEY);

CREATE INDEX IDX_UPGRADE_FLIGHT ON FACT_FLIGHT_UPGRADE (FLIGHT_KEY);

CREATE INDEX IDX_UPGRADE_DATE ON FACT_FLIGHT_UPGRADE (UPGRADE_DATE_KEY);

CREATE BITMAP INDEX IDX_UPGRADE_CHANNEL ON FACT_FLIGHT_UPGRADE (CHANNEL_KEY);

CREATE INDEX IDX_UPGRADE_RESERVATION ON FACT_FLIGHT_UPGRADE (RESERVATION_ID);

---------------------------------------------------------------------------------------------------