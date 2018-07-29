SELECT CASE
 WHEN event_type = 'system_crash'
 AND event_count > 100
 AND event_owner = 'Neo Andersson' THEN 1
 ELSE 0
 END AS trigger_cirical
FROM critical_events;
