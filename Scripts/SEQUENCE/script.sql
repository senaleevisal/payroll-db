CREATE SEQUENCE Salaries_seq
    START WITH 1  -- Start at 1
    INCREMENT BY 1  -- Increment by 1 for each new value
    NOCACHE  -- No caching of sequence values (optional)
    NOCYCLE;  -- Sequence will not cycle after reaching max value

ALTER PROCEDURE assign_salary COMPILE;
