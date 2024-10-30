WITH sessions AS (
    SELECT 
        session_id,
        timestamp
    FROM dev.raw_data.session_timestamp
)

SELECT * FROM sessions;