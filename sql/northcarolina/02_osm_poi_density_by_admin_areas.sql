-- Query 2: POI Density by Administrative Areas
-- Purpose: Summarize number of points of interest per administrative unit for spatial comparison

-- Requirements:
-- - Use pois for point features
-- - Use adminareas_a for administrative boundaries
-- - Join POIs to admin areas using spatial intersection
-- - Group results by administrative area name
-- - Count total POIs per area

-- Expected Output:
-- - admin_area
-- - poi_count

SELECT
    a.name AS admin_area,
    COUNT(p.geom) AS poi_count
FROM
    pois p
JOIN
    adminareas_a a
ON
    ST_Intersects(p.geom, a.geom)
GROUP BY
    a.name
ORDER BY
    poi_count DESC;