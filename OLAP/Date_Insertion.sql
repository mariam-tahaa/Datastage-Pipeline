DECLARE
    v_start_date DATE := DATE '2023-01-01';
    v_end_date   DATE := DATE '2025-12-31';
    v_current     DATE;
BEGIN
    v_current := v_start_date;

    WHILE v_current <= v_end_date LOOP
        INSERT INTO dim_date (
            Date_Key,
            Full_Date,
            Day,
            Month,
            Quarter,
            Year
        )
        VALUES (
            TO_CHAR(v_current, 'YYYYMMDD'),    
            TO_CHAR(v_current, 'YYYY-MM-DD'),  
            EXTRACT(DAY FROM v_current),
            EXTRACT(MONTH FROM v_current),
            TO_NUMBER(TO_CHAR(v_current, 'Q')),
            EXTRACT(YEAR FROM v_current)
        );

        v_current := v_current + 1;
    END LOOP;

    COMMIT;
END;