WITH user_sessions AS (
    SELECT 
        session_id,
        user_id,
        channel
    FROM {{ source('raw_data', 'user_session_channel') }}
)

SELECT * FROM user_sessions;





