SELECT count(*) AS num_events
FROM EVENTS
WHERE extract(hour from created_at) = extract(hour from CURRENT_time) and created_at>=current_date 
