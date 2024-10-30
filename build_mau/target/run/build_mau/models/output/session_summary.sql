
  
    

        create or replace transient table dev.analytics.session_summary
         as
        (WITH  __dbt__cte__user_session_channel as (
WITH user_sessions AS (
    SELECT 
        session_id,
        user_id,
        channel
    FROM dev.raw_data.user_session_channel
)

SELECT * FROM user_sessions;
),  __dbt__cte__session_timestamp as (
WITH sessions AS (
    SELECT 
        session_id,
        timestamp
    FROM dev.raw_data.session_timestamp
)

SELECT * FROM sessions;
), u AS (
    SELECT * FROM __dbt__cte__user_session_channel
), st AS (
    SELECT * FROM __dbt__cte__session_timestamp
)
SELECT u.userId, u.sessionId, u.channel, st.ts
FROM u
JOIN st ON u.sessionId = st.sessionId
        );
      
  