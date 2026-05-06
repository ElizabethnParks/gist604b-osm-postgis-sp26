-- Query 1: Hospital Locations
-- Purpose: Extract hospital locations for spatial distribution analysis

-- Requirements:
-- - Use pois for point features
-- - Filter POIs where fclass = 'hospital'
-- - Return raw point geometries

-- Expected Output:
-- - geom

SELECT
    geom
FROM
    pois
WHERE
    fclass = 'hospital';