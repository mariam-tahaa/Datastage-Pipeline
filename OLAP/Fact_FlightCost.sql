CREATE TABLE FactFlightCosts (
    SK_Fact_Flight_Cost INT,
    Flight_Key INT,
    Aircraft_Key INT,
    Date_Key VARCHAR2(50),
    Fuel_Cost_USD DECIMAL(12, 2),
    Crew_Cost_USD DECIMAL(12, 2),
    Airport_Fees_USD DECIMAL(12, 2),
    Maintenance_Cost_USD DECIMAL(12, 2),
    Catering_Cost_USD DECIMAL(12, 2),
    Total_Cost_USD DECIMAL(12, 2),
    
    CONSTRAINT pk_flight_cost_key PRIMARY KEY (SK_Fact_Flight_Cost),
    CONSTRAINT fk_fact_flight FOREIGN KEY (Flight_Key) REFERENCES DIM_FLIGHT(Flight_Key),
    CONSTRAINT fk_fact_aircraft FOREIGN KEY (Aircraft_Key) REFERENCES DimAircraft(Aircraft_Key),
    CONSTRAINT fk_fact_date FOREIGN KEY (Date_Key) REFERENCES Dim_Date(Date_Key)
);

drop table FactFlightCosts;

select * from FactFlightCosts;

