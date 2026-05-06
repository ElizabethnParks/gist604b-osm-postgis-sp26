-- Query 2: Total Road Length by Road Type
-- Purpose: Calculate the total length of roads grouped by road classification

-- Requirements:
-- - Use roads layer
-- - Group by fclass (e.g., primary, secondary, residential)
-- - Calculate total length using ST_Length

-- Expected Output:
-- - fclass
-- - total_length

SELECT
    fclass,
    SUM(ST_Length(geom)) AS total_length
FROM
    roads
GROUP BY
    fclass
ORDER BY
    total_length DESC;