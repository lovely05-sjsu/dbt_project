WITH sessions AS (
    SELECT 
        session_id,
        timestamp
    FROM {{ source('raw_data', 'session_timestamp') }}
)

SELECT * FROM sessions;





