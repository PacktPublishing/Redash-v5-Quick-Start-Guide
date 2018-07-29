SELECT type AS "visualization_type::filter",
 count(*) AS count_per_type
FROM visualizations
GROUP BY type
ORDER BY count_per_type
