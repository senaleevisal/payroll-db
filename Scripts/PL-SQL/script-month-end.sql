BEGIN
    DBMS_SCHEDULER.create_job (
        job_name        => 'MONTH_END_PAYROLL_JOB',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN generate_payroll_for_all_employees; END;',
        start_date      => TRUNC(LAST_DAY(SYSDATE)) + INTERVAL '23:59:59' HOUR TO SECOND,  -- Last day of the current month at 23:59:59
        repeat_interval => 'FREQ=MONTHLY; BYMONTHDAY=-1', -- Runs on the last day of every month
        enabled         => TRUE,
        comments        => 'Generate payroll at the end of every month'
    );

    DBMS_OUTPUT.PUT_LINE('Payroll job scheduled to run at the end of every month.');
END;
/
